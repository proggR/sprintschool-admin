# Managed Small Business Digital Presence/Consulting

## Name Gen
- conomic.ca
- conomicgrowth.ca
- tradigial.ca
- yocally.ca
- quinteclicks.ca
- **affordableaudience.ca**


## Brand Idea 1: Affordable Audience
- sells webapps for more ambitious projects/projects needing a CMS: $10k min job, $15-20k average
- (I) sells managed hosting (AWS with Terraform, lean into enterprise quality infra for cheap in brand): $750/month for basic site, custom quotes for more complex environments
- sells website rewrites in Tailwind & NextJS for industry standards (@TODO: learn Tailwind): $2500 min job, $5k more average, $10k for ambitious projects/needy seeming clients
- (I) sells managed social media services: $750/month
- (I) sells managed newsletter services: $750/month
- (II) sells cloud/digital trends/transformation training ($1000 development, $500 additional for 1hr session)
- (II) sells social media strategy development & training ($1000 development, $500 additional for 1hr session)

- Package (I): any 2: 1250 instead of 1500, any 3 = 1750 instead of 2250.
- Package (II): bundle both for $1500 dev and $750 for both training sessions, (ie: $2250 instead of $3000)
- full sale = $5k web dev + $2250 training dev & delivery = $7250 contract + $2250/month recurring.
- 2 full recurring package sales = salary matched, but with the contract costs it also means a $14.5k raise by full client 2

### Needs
- Pipes Content Generation Strategy: learn/use [this](https://github.com/nerevu/riko). (potentially a "tool" in a hosted version of this tbh)
- determine CMS used. maybe Strapi? lol. piggy back off 9thCO's expertise while I build out this strategy?
- Systeme is another option, though limiting feeling. solves for courses/newsletter/funnels, etc though
- determine newsletter option to use
- determine SM management tooling to use
- determine social media strategy (what channels? what schedule? what categories of content?... pls not just generic content marketing about content marketing _barf_)
- determine some boilerplate/repeatable strategies/schedules that can be adapted to fit (use in-house)
- determine a reliable source for templates with licenses open to reselling, even if only single site licenses. template cost could easily be worked into the billables and shave hours. (focus on selling systems/management over just "websites". a brand is more than its website, its the aggregate of all its channels, and that's my secret/how I'm best used for the most bang for their buck when selling)
- determine a project outline and schedule, broken down into weekly/monthly/quarterly deliverables, with all active projects aimed to be built in 2-3 weeks and wrapped up within 4-6 _max_

### Environment

```
# Provisioning Python/Riko Environment
mkdir ~/py
mkdir ~/pydev
cd ~/py
sudo apt-get update && sudo apt install software-properties-common
sudo add-apt-repository ppa:deadsnakes/ppa && sudo apt-get update && sudo apt install python3.8
python3 --version
curl -o ./get-pip.py https://bootstrap.pypa.io/get-pip.py
python3 ./get-pip.py
cd ~/pydev
rm -rf ~/py

pip install virtualenvwrapper
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/pydev
source /usr/local/bin/virtualenvwrapper.sh
```

```
# Provisioning ListMonk Environment
mkdir ~/bin
cd ~/bin
curl -o ./listmonk https://github.com/knadh/listmonk/releases/download/v2.3.0/listmonk_2.3.0_linux_amd64.tar.gz
cd ./listmonk
#./listmonk --new-config

tee -a config.toml <<EOF
[app]
address = "0.0.0.0:9000"
admin_username = "listmonk"
admin_password = "listmonk"

# Database.
[db]
host = "listmonk_db"
port = 5432
user = "listmonk"
password = "listmonk"
database = "listmonk"
ssl_mode = "disable"
max_open = 25
max_idle = 25
max_lifetime = "300s"
EOF

./listmonk --install
./listmonk #starts it
```

```
# Provisioning Instance
mkvirtualenv tenant0
pip install riko

# if other tenants:
# ls $WORKON_HOME # display tenants/environments
# workon tenant1 # switch tenants/environments
```

#### Kubernates

##### Namespaces
```
- apiGroups: ["batch"]
  resources:
  - jobs
  - cronjobs
  verbs: ["*"]
---
kind: RoleBinding
apiVersion: rbac.authorization.k8s.io/v1
metadata:
  name: admins-ns1-rb
  namespace: namespace1
subjects:
- kind: Group
  name: admins-ns1
  apiGroup: rbac.authorization.k8s.io
roleRef:
  kind: Role
  name: namespace1-admin
  apiGroup: rbac.authorization.k8s.io
```

##### Resource Limiting
```
apiVersion: v1
kind: ResourceQuota
metadata:
  name: mem-cpu-demo
  namespace: namespace1
spec:
  hard:
    requests.cpu: "1"
    requests.memory: 1Gi
    limits.cpu: "2"
    limits.memory: 2Gi
```

##### Network Isolation
```
apiVersion: networking.k8s.io/v1
kind: NetworkPolicy
metadata:
  name: default-np-ns1
  namespace: namespace1
spec:
  podSelector: {}
  policyTypes:
  - Ingress
  - Egress
  ingress:
  - from:
    - namespaceSelector:
        matchLabels:
          nsname: namespace1
  egress:
  - to:
    - namespaceSelector:
        matchLabels:
          nsname: namespace1
```

#### Payload CMS

##### Environment Provisioning
```
sudo apt update
sudo apt install nodejs npm
npm i create-payload-app
```

##### Environment Provisioning
```
npx create-payload-app # @TODO: decide if single install or multitenant
npm install --save --legacy-peer-deps express
# The Rest: https://payloadcms.com/docs/getting-started/installation
```

#### TailwindCSS

##### Code
```
npm install @headlessui/react @heroicons/react
```

### Pipes
#### Feeds
- local RSS feeds
- scrape local sites without RSS feeds
- Canadian news/Canadian small business news feeds
- technology & small businesses feeds
- AWS/Strapi whatever third party services are used feeds
- local tech job listings feeds (aggregate local tech gigs to lean into the recruitment/staffing angle)
- find open datasets that are CSV or JSON (any open APIs of use for JSON, CSV would be more budgets/programs)
-

#### Code

```
# flow.py
from __future__ import print_function
from riko.collections import SyncPipe

conf1 = {'attrs': [{'value': 'https://google.com', 'key': 'content'}]}
conf2 = {'rule': [{'find': 'com', 'replace': 'co.uk'}]}

def pipe(test=False):
    kwargs = {'conf': conf1, 'test': test}
    flow = SyncPipe('itembuilder', **kwargs).strreplace(conf=conf2)
    stream = flow.output

    for i in stream:
        print(i)
```
