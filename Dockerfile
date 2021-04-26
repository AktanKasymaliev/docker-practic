FROM python:3

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

WORKDIR /home/root9/projects/docker_practic

COPY requirements.txt /home/root9/projects/docker_practic
RUN pip install -r requirements.txt

COPY . /home/root9/projects/docker_practic

EXPOSE 8000
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
