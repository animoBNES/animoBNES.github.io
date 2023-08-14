# ---
# jupyter:
#   jupytext:
#     formats: ipynb,py:percent
#     text_representation:
#       extension: .py
#       format_name: percent
#       format_version: '1.3'
#       jupytext_version: 1.14.5
#   kernelspec:
#     display_name: Python 3 (ipykernel)
#     language: python
#     name: python3
# ---

# %% [markdown]
# # PHILIPPINES SAN ROQUE FPV FPV PROJECT

# %% [markdown]
# Saang Bum Kim <br>
# 2023-08-13 22:02:28 

# %%
# %load_ext autoreload
# %autoreload 2

# %%
# # %matplotlib notebook

# %%
# %matplotlib inline

# %%
from mpl_toolkits import mplot3d
from mpl_toolkits.mplot3d import Axes3D
from mpl_toolkits.mplot3d.art3d import Poly3DCollection

# %% [markdown]
# floating photovoltaic

# %% [markdown]
# SRPC 150MWac to 165MWac Floating Solar PV Power Plant

# %% [markdown]
# - ref
#     - 145000079 Feasibility Study

# %% [markdown]
# - locatopm: Philippines San Roque Dam, 16 08 34 N, 120 41 22 E

# %% [markdown]
# ## design condition

# %% [markdown]
# ### PV module

# %% [markdown]
# - 695 W
# - 38.3 kg
# - size [mm]: 2384 1303 33
# - area [m^2]: 3.106352
# - solar incidence angle [deg]: 10 / 32
#
# - PV floating 1 unit = 12 PV modules (2 x 6)
#     - size
#         - 4.768 x 7.818

# %% [markdown]
# ### block layout overview

# %% [markdown]
# - group:
#     - A - P
# - No: 1 - 23
#     - 3
# - block #3
#     - 695 W
#     - 1763 units
#     - 21156 ea (module)
#     - area: 65718 m^2
#     - size: 256 m
#         - m: 494 x 133
#         - m: 496 x 133
#         - ea: 104 x 17 = 1768
#     - capacity (DC): 14703 MW
#     - capacity (AC): 12567 MW
#
#     - deflection
#         - 650 m

# %% [markdown]
# ### Wind and Wave

# %% [markdown]
# - wave height = 0.5 m
# - wind speed = 75 m/s
#
# - L.W.L. (Lake Water Level) = EL + 150 m
#     - 225 - 290
#     - asl
#     - FH
# - Water depth = 140 m
#     - 100 - 165
#     
# - water level fluctuation = 65 m
#
# - Standard Block
#
# - Max. Deflection
#     - horizontal 30.99 m
#     - angular 6.57 deg

# %% [markdown]
# # waves2Foam vs IHFoam/OlaFlow

# %% [markdown]
# ## COMPARISON OF DIFFERENT METHODS FOR GENERATION AND ABSORPTION OF WATER WAVES

# %% [markdown]
# - June 2019
# - Revista de Engenharia Térmica 18(1):71-77
# - DOI: 10.5380/reterm.v18i1.67053
# - José CondeJosé Conde

# %% [markdown]
# - The knowledge of water wave characteristics
#     - generation
#     - propagation
#     - transformation
#     - breaking
# - is fundamental for hydrodynamic studies and 
#     the design of ocean, coastal and port structures.
#     
# - In addition to the small-scale experimental studies,
#     the use of numerical models is also a very important tool in hydrodynamic studies. 
# - To have reliable numerical results 
#     - a proper validation is required. 
# - The main objective of this paper is 
#     - to compare different methods of 
#         - wave generation and wave absorption 
#         - in a numerical flume, 
#     - and to find what is the most suited to simulate
#         - non-breaking regular wave propagation 
#         - in a two-dimensional flume 
#         - in deep water condition. 
# - The numerical simulations were made using the OpenFOAM® software package. 
# - Two solvers, 
#     - waves2Foam and 
#     - IHFoam/OlaFlow, 
#     - the utility GroovyBC and 
#     - a mesh stretching technique are compared. 
# - These numerical codes solve 
#     - the transient Navier-Stokes equations and 
#     - use a VoF (Volume of Fluid) method 
#     - to identify the free surface. 
# - A solution dependence study with the methods of 
#     - wave generation and wave absorption is presented.
# - The results are also compared 
#     - with the theoretical wave and experimental data. 
# - The results show that 
#     - the different methods of generation 
#         produce waves similar to the theoretical and the experimental ones, 
#     - only slightly differences were visible. 
# - The three method of 
#     - wave dissipation considered produce very different results: 
#     - IHFoam/OlaFlow is not able to dissipate the wave tested; 
#     - the mesh stretching technique is able to dissipate the waves but 
#         - produces a water level rise; 
#     - the waves2Foam solver is able to dissipate properly the wave tested.

# %% [markdown]
# # Wave

# %% [markdown]
# - 저수지의 파고
#     - 가정 심해파
#     - 대안거리: F
#     - 풍속: U
#     - SMB (Sverdruv Munk Bretschneider) method
#     - 다시사빌 (T. Saville)에 의한 수정
#         - 처오름 높이를 포함한 파고 R

# %% [markdown]
# - d/L
#     - deep: > 1/2
#     - intermediate: > 1/25
#     - shallow: < 1/25

# %% [markdown]
# ## SMB method

# %% [markdown]
# - 유의파고 h
# - 파장 L

# %%
# %matplotlib inline

# %%
# %matplotlib inline
print(mpl.get_backend())

# %%
h = lambda U, F, d, g = 9.80665: 0.283 * np.tanh(0.530*(g*d/U**2)**.75) * \
    np.tanh(0.0125*(g*F/U**2)**.42 / np.tanh(.53*(g*d/U**2)**.75)) * U**2 / g
h(12,1,40,9.80665)

# %%
# %matplotlib inline

# %%
import numpy as np
import matplotlib.pyplot as plt


ax = plt.figure().add_subplot(projection='3d')

# Prepare arrays x, y, z
theta = np.linspace(-4 * np.pi, 4 * np.pi, 100)
z = np.linspace(-2, 2, 100)
r = z**2 + 1
x = r * np.sin(theta)
y = r * np.cos(theta)

ax.plot(x, y, z, label='parametric curve')
ax.legend()

plt.show()

# %%
fig = plt.figure()
ax = fig.add_subplot(projection='3d')
ax.plot(1,2,3,'o')

# %%
fig = plt.figure()
ax = fig.add_subplot(projection='3d')

n_d = 2**5
n_F = 2**5
n_U = 2**5

d_s = [200/(n_d-1)*i for i in range(1,n_d+1)]
F_s = [1/(n_F-1)*i for i in range(1,n_d+1)]
U_s = [100/(n_U-1)*i for i in range(1,n_d+1)]

U_i = 12
for j in range(n_d):
    d_i = d_s[j]
#     for k in range(n_F):
#     h_s = [h(U_i,F_i,d_i,9.80665) for F_i in F_s]
    h_s = [h(U_i,F_i,d_i) for F_i in F_s]
    d_si = np.ones(n_d)*d_i
#     print(len(d_si))
#     print(len(F_s))
#     print(len(h_s))
    ax.plot3D(d_si,F_s,h_s)
# plt.show()    

# %%
h1 = lambda U, F: 0.0283*0.0125*9.80665**(0.42-1) \
    * U**(2-.42*2) * F**0.42

# %%
print(0.0283*0.0125*9.80665**(0.42-1))
print(2-.42*2)

# %%
h = lambda U, F: 0.00086 * U**1.1 * F**0.45
L = lambda U, F: 0.011 * U**0.84 * F**.58

# %%
h(10,100)

# %%
h1(10,100)

# %%
# fig = plt.figure()
# ax = fig.add_subplot(projection='3d')
# fig, ax = plt.subplots(nrows=nr, ncols=nc, figsize=[3*x for x in (golden,.7)])
fig, ax0 = plt.subplots(nrows=1, ncols=2, figsize=[3*x for x in (golden,1.2)])
ax = ax0[0]

# n_U = 2**4
# n_F = 2**4

# U = [i/(n_U-1)*100 for i in range(n_U)]
# F = [i/(n_F-1)*1000 for i in range(n_F)]

U = [20,30,75]
F = [100,1000,10000]

n_U = len(U)
n_F = len(F)

for ii in range(n_U):
    U_ii = U[ii]
    y = [h(U_ii,Fi) for Fi in F]
#         ax.plot3(U,y)
    ax.plot(F,y)
ax.set_xlabel('F [m]')
ax.set_ylabel('H [m]')
ax.set_xscale('log')
ax.set_yscale('log')
ax.set_xlim([100,10000])
ax.set_ylim([.01,10])
ax.grid()

ax = ax0[1]
for ii in range(n_U):
    U_ii = U[ii]
#     F_ii = F[ii]
    y = [L(U_ii,F_ii) for F_ii in F]
#         ax.plot3(U,y)
    ax.plot(F,y)
# ax.set_xlabel('U [m/s]')
ax.set_xlabel('F [m]')
ax.set_ylabel('L [m]')
ax.set_xscale('log')
ax.set_yscale('log')
ax.set_xlim([100,10000])
ax.set_ylim([1,1000])
ax.grid()

# plt.show()        

# %%

# %% [markdown]
# # FINE
