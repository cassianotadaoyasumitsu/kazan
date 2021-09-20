#Kazan.app
Administrate your enployees and your requests.
Simple like that.

## To start
Follow all steps to run the application locally.
To set up Basic Data, please run:

### Access the directory
```bash
cd kazan
```

### Install Bundle
```bash
Bundle install
```

### Install or upgrade Yarn
To install:
```bash
npm install --global yarn
```
or
To upgrade:
```bash
yarn upgrade
```

### Drop exist Database
```bash
rails db:drop
```

### Create a Database
```bash
rails db:create
```

### Migrate the Database
```bash
rails db:migrate
```

### Seed the Database
```bash
rails db:seed
```

### Start 
```bash
rails s
```

### The last result should show: "All Done", if you have any problem, feel free to run
```bash
rails db:drop
```
(if needed)


### Credits
Rails app: Cassiano Yasumitsu
Back-end: Cassiano Yasumitsu & Farrah
Front-end: Felipe Ito

### Kazan - Keep all Control.