import typer
import subprocess

app = typer.Typer()

@app.command()
def start():
    """Start a local environment for study purposes."""
    subprocess.run(['ansible-playbook', 'ansible/playbooks/setup.yml'], check=True)

@app.command()
def add_problem(problem_name: str):
    """Add a new problem for personal study."""
    subprocess.run(['ansible-playbook', 'ansible/playbooks/create_problem.yml', '-e', f'problem_name={problem_name}'], check=True)

if __name__ == "__main__":
    app()
