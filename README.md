# GradientReload
Give our server the ability to reload gradiant in cluster

# How it works

Assume our server structure is like this:

    user -> nginx -> backend1:backend2

The deploy is done by jenkins.

And if we deploy to `backend1` and `backend2` simutaneously in production, we won't have time to fix issue when deploy is cause crash.

So i will make `backend1` as a test server and `backend2` used as a production server when deploy. Then the structure is as following:


    user -> nginx -> backend2
    tester -> nginx -> backend1

After tester finishing test, the nginx connect to `backend1` again.
