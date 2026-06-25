# Tienda Frontend

Frontend de la tienda de perritos, desplegado en AWS EKS.

## Tecnologías
- HTML + CSS + JavaScript
- Nginx
- Docker
- AWS EKS + ECR
- GitHub Actions

## Pipeline CI/CD
Al hacer push a `main`:
1. Build de la imagen Docker
2. Push a Amazon ECR
3. Deploy a EKS

## Acceso
```bash
kubectl get svc tienda-frontend -n tienda