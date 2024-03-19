import sys
import json
from deployer.docker import build
from deployer.ecs import Ecs


def main():
    assert len(sys.argv) >= 3, 'usage: python main.py <env> <box> <stacks>'
    env = sys.argv[1]
    box = sys.argv[2]
    stacks = sys.argv[3]
    
    for stack in stacks.split(','):
      def deploy(cluster, service):
        ecs = Ecs(env, stack)
        file = f'deploy/taskdefs/{stack}-{env}.json'
        
        with open(file) as f:
          taskdef=f.read().replace('{box}', str(box))
          f.close()

        with open(file, "w") as f:
          f.write(taskdef)
          f.close()

        imgs = [build(env, f'frontend-website-{env}-{stack}', 'deploy/server')]
        task = ecs.register_task_definition(file, imgs)
        ecs.update_service(env, cluster, service, task)

      print(f'running for stack: {stack}')
      
      if stack == 'uae':
        cluster = f'me-uae-{env}-ecs-legacy'
        service = {
          'prod': f'me-uae-{env}-frontend-website',
          'staging':  f'me-uae-{env}-frontend-website-{box}' if str(box) else f'me-uae-{env}-frontend-website'
        }[env]
        deploy(cluster, service)

if __name__ == '__main__':
    main()
