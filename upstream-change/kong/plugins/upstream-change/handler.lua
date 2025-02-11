local UpstreamHandler = {
    PRIORITY = 1000,
    VERSION = "0.0.1",
}

function UpstreamHandler:access(conf)
    kong.log.info("UpstreamHandler: Changing upstream to: " .. conf.upstream)
    local ok, err = kong.service.set_upstream(conf.upstream)
    if not ok then
        kong.log.err(err)
        return
    end
end

return UpstreamHandler
