from locust import HttpLocust, TaskSet


def index(l):
    l.client.get("/sleep")

class UserBehavior(TaskSet):
    tasks = {index: 1}

class WebsiteUser(HttpLocust):
    task_set = UserBehavior
    min_wait = 1
    max_wait = 2

