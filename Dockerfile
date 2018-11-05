FROM python:2
WORKDIR /ribbit
COPY . /ribbit
RUN pip install -r requeriments.txt
RUN python manage.py syncdb --noinput
RUN python manage.py migrate ribbit_app
CMD python manage.py runserver 0:$PORT
