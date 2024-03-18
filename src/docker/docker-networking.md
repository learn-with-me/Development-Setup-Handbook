# Docker Networking

To do input/output with a detached container use network connections or shared volumes.

By default, all containers have networking enabled and they can make any outgoing connections. The operator can completely disable networking with `docker run --network none` which disables all incoming and outgoing networking. In cases like this, you would perform I/O through files or `STDIN` and `STDOUT` only.

## Network

### Benefits of Network

There are several benefits to creating a network for containers:

* **Isolation**: Containers on the same network can communicate with one another directly, without the overhead introduced by routing traffic through the host.
While containers in different networks cannot, unless specifically configured to do so. This can be useful for isolating applications or services from each other for `security` or `performance` reasons.

* **Service Discovery**: Docker provides automatic service discovery on user-defined networks. This means that a container can use DNS to discover and refer to other containers by their service name in the same network.

* **Custom IP Addressing**: User-defined networks also allow you to use custom IP address ranges and subnets.
This can be useful if you need to `avoid IP address conflicts` with other networks or systems. You can also use networks to enable `IPv6` for your containers.

* **Scalability**: When you scale a service without a defined network, Docker will not automatically handle the networking for the additional instances of the service. You would need to manually configure the networking to ensure that the instances can communicate with each other and with other services. You'll need to manually configure networking for the scaled services instead.
    ```sh
    $ docker network connect my_network my_web_app_1
    $ docker network connect my_network my_web_app_2
    ```
* **Load Balancing**: Docker automatically load balances requests to all instances of a scaled services, using round-robin strategy. You can use networks to distribute traffic across multiple containers.
* **Network Policies**: You use networks to enforce network policies for your containers.
* **Service Mesh**: You can use networks to create a service mesh for your containers.
* **Observability**: You can use networks to monitor and troubleshoot your containers.

### Driver

`Bridge` driver is the default network driver for Docker, and it's used when you don't specify a driver. It provides a private network internal to the host so containers on this network can communicate.

`Overlay`: used when you need to enable network communication between Docker containers running on different hosts or if you need to create a swarm service spanning multiple nodes in a Docker Swarm. It creates a distributed network among multiple Docker daemon hosts. This network sits on top of (overlays) the host-specific networks, allowing containers connected to it to communicate securely, even across different Docker daemon hosts. This can be very useful in cases where you are running a distributed application across multiple hosts.

`Macvlan`: used when you want to assign a MAC address to a container, making it appear as a physical device on your network. The Docker daemon routes traffic to containers by their MAC addresses. Using the macvlan driver is sometimes the best choice when dealing with legacy applications that expect to be directly connected to the physical network, rather than routed through the Docker host’s network stack. Macvlan is ideal for cases where network stack isolation is important, as it removes the need for a bridge between the Docker host and the container by assigning a MAC address to each container's virtual network interface.

