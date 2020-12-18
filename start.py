import sys
import variables
sys.path.insert(1, 'mutation')
from music import jam

if __name__ == "__main__":
	jam.run(host="0.0.0.0", port=variables.PORT, debug=True)
