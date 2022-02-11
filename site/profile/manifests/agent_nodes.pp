class profile::agent_nodes {
  include dockeragent
  dockertagent::node {'web.puppet.vm':}
  dockertagent::node {'db.puppet.vm':}
}
