# Kong Api Gateway with Flask Microservices

This is a simple demonstration of how to use Kong as an api gateway of Python/Flask Microservices. This tutorial uses DBless setup(declarative_config) of Kong because of its simplicity. By default kong uses postgresql to store its configurations

## Cinema 3 (Microservices Part)

[Cinema 3](https://github.com/umermansoor/microservices) is an example project which demonstrates the use of microservices for a fictional movie theater. 
The Cinema 3 backend is powered by 4 microservices, all of which happen to be written in Python using 
Flask.

 * Movie Service: Provides information like movie ratings, title, etc.
 * Show Times Service: Provides show times information.
 * Booking Service: Provides booking information. 
 * Users Service: Provides movie suggestions for users by communicating with other services.

### Usage



- Details can be found under microservices path's README.md


## Kong


### Installation macOS




### Credits

- Thanks for preparing Cinema 3 microservice example to [umermansoor](https://github.com/umermansoor)

- Thaks for [comment](https://github.com/Kong/kong/issues/4373#issuecomment-470987094) under [this issue](https://github.com/Kong/kong/issues/4373)
