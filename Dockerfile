#Commandes RUN combinées, BONNE PRATIQUE (de combiner)

RUN apt-get update && apt-get-install -y

#Supprimer les caches d'installation des packages

RUN apt-get clean && rm -rf /var/lib/apt/lists/*

#Supprimer les fichiers temporaires
RUN re -rf /tmp/*

#Supprimer les logs
RUN rm -rf /var/log/*

CMD ["python3", "main.py"]

EXPOSE 8501

ENTRYPOINT ["streamlit", "run", "./app/app_streamlit.py","--server.port=8501", "--serveur.address=0.0.0.0"]
