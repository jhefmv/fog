module Fog
  module Identity
    class Openstack
      class Real

        def check_token(token_id, tenant_id)
          
          request(
            :expects  => [200, 203],
            :method   => 'HEAD',
            :path     => "tokens/#{token_id}​?belongsTo=#{tenant_id}"
          )

          # TODO: Handle 404

        end

      end

      class Mock



      end
    end
  end
end