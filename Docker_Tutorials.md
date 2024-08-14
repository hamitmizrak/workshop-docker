# Docker Tutorials
[Docker](https://www.docker.com/)
[DockerHub](https://hub.docker.com/)
[GitHub Link](https://github.com/hamitmizrak/workshop-docker)


---

14 Ağustos Çarşamba  09:00-13:00
19 Ağustos Pazartesi 09:00-12:00
21 Ağustos Çarşamba  09:00-12:00

```sh
docker --version
docker -v
docker info
```
---
- Bare Metal
- Virtual Machine
- Containerization
- Docker: gemi limanlarında gemilere yük bindiren ve boşaltan işcilere denir.
- Linux Kernel'e 2008 yılında eklendi ve LXC(LinuX Containers) bu teknoloji üzerine kuruludur.
- docker 2008 yılında Solomon Hykes Go diliyle yazılmış.
- Open source (Açık kaynak kodludur)
- şirket ilk adı: DotCloud
- şirket şimdiki adı: Docker.INC
- Go diliyle yazıldı.
- Docker aynı işletim sitemi üzerinde birbirinden bağımsız ve izole container oluşturmamızı destekler
- build, deploy
- docker: Hızlı derleme, test için, dağıtım, ölçeklendirmeyi sağlar.
- dockerhub: docker imagelarının saklandığı yerdir.
- 2015 yılında Docker Swarm eklenmiştir.
- Farklı işletim sistemlerinde çalışıyor(Cross Platform)
- Docker CE (Ücretsiz)
- Docker EE (Ücretli)
---

DockerHub: docker imagelarımızı sakladığımız yer
Image: Bütün ayarları yapılmış çalışmayı beklenen docker objesidir.
Container:Imageların çalıştığı yerdir.

Dockerfile:image oluşturmak için kullanırız. (docker build -t imageName .)
docker-compose:Birden fazla servisin yönetildiği yerdir (docker-compose up -d)
volume: Docker verilerinin kalıcılığı için kullanılır.
swarm:docker orchestration(ölçeklendirme)
network: farklı containerlerimizin birbiriyle bağlantı kurduğu alandır.
dockerize: Bir projeyi docker üzerinden koşturmak demektir.

---
Port
65536 port
0<=PORT<=1023
1024<=PORT<= 49151
49152<=PORT<=65535


























































































































































---
**docker info**
$ docker info
Client:
 Context:    default
 Debug Mode: false
 Plugins:
  buildx: Docker Buildx (Docker Inc., v0.9.1)
  compose: Docker Compose (Docker Inc., v2.13.0)
  dev: Docker Dev Environments (Docker Inc., v0.0.5)
  extension: Manages Docker extensions (Docker Inc., v0.2.16)
  sbom: View the packaged-based Software Bill Of Materials (SBOM) for an image (Anchore Inc., 0.6.0)
  scan: Docker Scan (Docker Inc., v0.22.0)

Server:
 Containers: 0
  Running: 0
  Paused: 0
  Stopped: 0
 Images: 0
 Server Version: 20.10.21
 Storage Driver: overlay2
  Backing Filesystem: extfs
  Supports d_type: true
  Native Overlay Diff: true
  userxattr: false
 Logging Driver: json-file
 Cgroup Driver: cgroupfs
 Cgroup Version: 1
 Plugins:
                                                                                                      
  Network: bridge host ipvlan macvlan null overlay
  Log: awslogs fluentd gcplogs gelf journald json-file local logentries splunk syslog
 Swarm: inactive
 Runtimes: runc io.containerd.runc.v2 io.containerd.runtime.v1.linux
 Default Runtime: runc
 Init Binary: docker-init
 containerd version: 770bd0108c32f3fb5c73ae1264f7e503fe7b2661
 runc version: v1.1.4-0-g5fd4c4d
 init version: de40ad0
 Security Options:
  seccomp
   Profile: default
 Kernel Version: 5.15.153.1-microsoft-standard-WSL2
 Operating System: Docker Desktop
 OSType: linux
 Architecture: x86_64
 CPUs: 32
 Total Memory: 30.21GiB
 Name: docker-desktop
 ID: XZDQ:FWCX:HZUL:Q4WW:ZHME:ACQ3:CLEN:WY3P:AXU4:FTYN:YK6H:SA3R
 Docker Root Dir: /var/lib/docker
 Debug Mode: false
 HTTP Proxy: http.docker.internal:3128
 HTTPS Proxy: http.docker.internal:3128
 No Proxy: hubproxy.docker.internal
 Registry: https://index.docker.io/v1/
 Labels:
 Experimental: false
 Insecure Registries:
  hubproxy.docker.internal:5000
  127.0.0.0/8
 Live Restore Enabled: false

WARNING: No blkio throttle.read_bps_device support
WARNING: No blkio throttle.write_bps_device support
WARNING: No blkio throttle.read_iops_device support
WARNING: No blkio throttle.write_iops_device support

