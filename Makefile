PROJECT = rabbitmq_coap_pubsub
PROJECT_DESCRIPTION = CoAP Publish-Subscribe interface to RabbitMQ

define PROJECT_APP_EXTRA_KEYS
	{broker_version_requirements, []}
endef

DEPS = rabbit_common rabbit amqp_client rabbitmq_lvc_exchange gen_coap
TEST_DEPS = rabbitmq_ct_helpers rabbitmq_ct_client_helpers

DEP_PLUGINS = rabbit_common/mk/rabbitmq-plugin.mk

NO_AUTOPATCH += gen_coap

include ../../rabbitmq-components.mk
include ../../erlang.mk
