Addcerts for registry

Create auth tokens
GitLab needs a certificate ("auth token") to talk to the registry API. The tokens must be provided in the /certs directory of your container. You could use an existing domain ceritificate or create your own with a very long lifetime like this:

mkdir certs
cd certs
# Generate a random password password_file used in the next commands
openssl rand -hex -out password_file 32
# Create a PKCS#10 certificate request
openssl req -new -passout file:password_file -newkey rsa:4096 -batch > registry.csr
# Convert RSA key
openssl rsa -passin file:password_file -in privkey.pem -out registry.key
# Generate certificate
openssl x509 -in registry.csr -out registry.crt -req -signkey registry.key -days 10000
It doesn't matter which details (domain name, etc.) you enter during key creation. This information is not used at all.



pass : VpbMeFRHRvHq48gu2fzjsVuuhX3lsr3RZ1VONreTPUY=
