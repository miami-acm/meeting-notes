React & Material Design
=======================

To view this presentation::

    yarn start

New TypeScript/React Projects
-----------------------------

Install ``create-react-app``

Make new project:

.. code:: shell

    create-react-app my-app --scripts-version=react-scripts-ts
    yarn add react-mc
    mkdir -p types/react-mc/
    echo "declare module 'react-mc';" >> types/react-mc/index.d.ts
    # Add "import 'material-components-web/dist/material-components-web.css';" to App.tsx
