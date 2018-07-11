# Static File Server

When using `certbot` to request certificates for a domain, it asks to serve a
specific file under that domain. This service should facilitate the process.

1. In the domain provider, point the relevant domain(s) to the API of our
   ingress. (You can find out the IP with `kubectl get ingress`.)
2. You then need to add the new domain(s) to the `deployment/ingress.yml`.
3. Configure the new rules `kubectl apply -f deployment/`.
4. When that was successful (check again with `kubectl get ingress`)
   [copy](https://www.mankier.com/1/kubectl-cp) the required file into the
   container.
   ```
   kubectl cp <local-file> <acme-challenge-pod>:/usr/share/nginx/challenges/ -c web
   ```
5. Execute the certbot challenge.
6. Rejoice!
