import sys
from github import Github
from dotenv import load_dotenv

load_dotenv()
username = os.getenv("USERNAME")
password = os.getenv("PASSWORD")

def create():
    user = Github(username, password).get_user()
    repo = user.create_repo(sys.argv[1])
    print("Succesfully created repository {}".format(sys.argv[1]))

if __name__ == "__main__":
    create()
