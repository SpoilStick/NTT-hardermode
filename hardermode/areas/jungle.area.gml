global.jw_set_bigbandit_to_set_the_subarea_to_3_when_they_spawn = 0
#define area_name
return "?-"+string(GameCont.subarea);

#define area_sprite(q)
switch (q) {
   case sprFloor1: return sprFloor105;
   case sprFloor1B: return sprFloor105;
   case sprFloor1Explo: return sprFloor105Explo;
   case sprWall1Trans: return sprWall105Trans;
   case sprWall1Bot: return sprWall105Bot;
   case sprWall1Out: return sprWall105Out;
   case sprWall1Top: return sprWall105Top;
   case sprDebris1: return sprDebris105;
}

#define area_transit
if (lastarea != "jungle" and lastarea == "jungleboogie"){
		area = "jungle";
		subarea = 1
}

#define area_finish
if global.jw_set_bigbandit_to_set_the_subarea_to_3_when_they_spawn < 5{
	area = "jungle";
	subarea = global.jw_set_bigbandit_to_set_the_subarea_to_3_when_they_spawn
	subarea += 1;
	}
else {
	area = "labs"
	subarea = 1
	}
sprite_restore(sprBanditBossIdle);
sprite_restore(sprBanditBossWalk);
sprite_restore(sprBanditBossFire);
sprite_restore(sprBanditBossTell);
sprite_restore(sprBanditBossDash);
sprite_restore(sprBanditBossStop);
sprite_restore(sprBanditBossHurt);
sprite_restore(sprBanditBossDead);
#define area_setup
sound_play_music(mus105)
sound_play_ambient(amb105);
goal = 145;
background_color = make_color_rgb(42,144,12);
with BackCont
	shadcol = c_black
TopCont.fog = sprFog2
TopCont.darkness = 1

#define area_start
global.jw_set_bigbandit_to_set_the_subarea_to_3_when_they_spawn = GameCont.subarea
with Floor if random(7)<1
	with instance_create(x,y,TopDecalJungle)
		dir = choose(-1,1) 
with Wall if random(3)<1{ 
	if place_meeting(x+16,y,Floor)
		with instance_create(x+16,y,Bones){
			sprite_index = sprJungleDecal
			image_xscale = 1
			}
	else if place_meeting(x-16,y,Floor)
		with instance_create(x,y,Bones){
			sprite_index = sprJungleDecal
			image_xscale = -1
			}
	}
if GameCont.subarea > 1{
	repeat(power(2, GameCont.subarea - 1))
	with instance_furthest(10016, 10016, Floor)
		mod_script_call("mod", "enemies", "wantjungleboss_create", x + 16, y + 16);
	}
else instance_create(10016,10016,BigFlower)
//{
sprite_replace_base64(sprBanditBossIdle,"iVBORw0KGgoAAAANSUhEUgAAAMAAAAAgCAYAAABEmHeFAAAAB3RJTUUH4QkEFBE480oHgwAAABd0RVh0U29mdHdhcmUAR0xEUE5HIHZlciAzLjRxhaThAAAACHRwTkdHTEQzAAAAAEqAKR8AAAAEZ0FNQQAAsY8L/GEFAAAABmJLR0QASABvAKgKRg8wAAAEVklEQVR4nO2ZO44UQQyGW4AEFyAhISUjIIEAAiIushnS5sSkBMTchrNwDKRhG2T0r9cu21V21exOj2Rpd/rx+fW7q3q2D1fft8MOu1Rb7sBhh620vou27aTZNMcnsyXG7NhbeZ+V+4fGf7Q5Pz9/XJ/I3r96uV1/eicaneO9b5Td8iGbyz87s+VDRez0IR7ajNwjH33gbMpNBRt9SO89r+puwKLdgO/Y/v2WOBEkvsTdbSuaRuiDxq6InU8+i085WBV/Rf4jsUfjDzngTUJFESLsyib0FKCyCVfzK5owkxvlpzuCTZqdhFUFqC7CfRLAqvijbC8/tQmevHn837JF4HkC8CXSiimEPszmV8ZvNWFl7b3xcx+mCQDBaLMEILGrBGglvjp+L3u3qn3YOfFH81+agBkCmM33skf5/LrZ/Fb+yY9V/Mz6DyWAAL/f/jPp78oCVPGlNxlSAei8ivi5Dyv4Vv6r+NI1Vfz0CfDs6ulfi6zDzpHvacDV/P3vSr41AKri9w6gDL7pBJr0OwAHo/UkQOJqfCnwUX4k/gq+N34ugAw+F5zGl5Ygmfn31j+Dr8J/fXxx+vb89S3TfoyiQiCcvpfU7Aney9eaoIePybb40hSaFb+2EZ8ZvyQE5OMEPmf+HQcQvP+NZjmhvZLbr/MkIcpvvRLDBrhUPq2Ts/jSCsCq/2q+1X+34Ajl6iPTlkKac+SAlQQv38uezefJ5w340Pmr89/LF52Q1EfW2g9ojybvFPDy6fHm4e+Pw5l8Pomy+bTculR+dv7VddgO4eqTNhsamP8gEl0HRvjampjOj/LpWs7XNlpZfFwDnyN/Vv4z+8/im02A5l2D4fHIBrDFruZj8bEILb5n/RmNv5UHD3tm/rP5Wt4r6282gmetRUqTnOxJwCq+5MsqPvkQ4eNEHOGvzn8vvyf+oQagoPHVE39MRR5/UQFyvvR/ZQEkHrdKAZwjPyP/vXyt/0ICaC0BtF/cWgWIJMJi0n4CJ47Gx/VftPEjfC3eEb43/634exoQz82q/+gTOIPf8qEJlZyINAAej27CtAREG3CULcXvSX6PADyN5+X3CsBqPO8AivK94kd+xgBuNoDWgNECoHmmT6sZIvzeJmxNIU+yM0SgiRDjr2LzZuvhj4iA80cGkOWH2oAanCcAi2UBR6ehxuDf4wbIEl7Eh5bAJf6oAKWmaA2YLPFjzqwaWPyMAeDlSz5YA9g9CXbDzQcPjDsw+gZE8gHZeH+JLR3PEoAkMH6MH68QoRX/qPgkAUTqnyF+Xn+Lj37wvIcEIE0CvgPXHOhVvhQ83pe4WoMTO+MVZKsAWoNLAhjhcz8sgbcEmJWD1gDCxsuKH/sAe4/fnw9pL9/lgCQAfnPpvNHE8wBX8LkApebTilDVAFrz9TRArw+t6VvBb8U2wg858fnLV3Oi4HkZwV86Hwt7ifFX88OFyDqvtxEO/sHP5Kc6edhh982WO3DYYSvtD3Pt+6SYg0zkAAAAAElFTkSuQmCC",6,16,16 )
sprite_replace_base64(sprBanditBossWalk,"iVBORw0KGgoAAAANSUhEUgAAAQAAAAAgCAYAAAD9qabkAAAAB3RJTUUH4QkEFBEo7v0X5wAAABd0RVh0U29mdHdhcmUAR0xEUE5HIHZlciAzLjRxhaThAAAACHRwTkdHTEQzAAAAAEqAKR8AAAAEZ0FNQQAAsY8L/GEFAAAABmJLR0QASABvAKgKRg8wAAAFKklEQVR4nO1ZMY4UQQwcARJ8gISElIyABAIIiPjIZUiXE5MSEPMb3sIzkI4bwMhYttvuttszu72SpeN2bsuuclXPLNu7m6/bqlWrrrPKG1i1ylv3rzuuqvs6Y4WRP0MADfsalqB67iruKc7thzdszezhiPz39PFgM76+f7u92+vti+fbPdlswTXWz/S8Wth77e9n9gB9SJWNaeE+q5f9MzXuoYdoXHjh2aVX1g4C9xL/eO8q95/ugemDrclzDy4mL679ui04FT34GafBhhJW62NLOhF654/qw4OfyUGl/h7+M/bfM7uHg7QFjBTBYr5s/MoAqu4B+Pdgw0FQaYJLwc/03ykW0Ir/6NXDf1WBXz0/GA+uu6b5sfagf7QJqwMoY/5UA85KQTo8VOQpZDVABnYLf/89N//MU4jjfga+pH31/NX7b+X/9AJo+DMD4IjzXzq+hj0zAGbiezRID4CWANkGhGfTn6//FPfzpRnAo0E2/9Kdx6z5l/7j+KcWgBv6yc3j3zXDABUBWM3/LHz4bFwUv0J/jF8dgDDfCP8imKWBLAE48Vv4gItrZAHo312TAXr4j8IHrB/vn919efryv9JOQE3/Xg5mGHAUf5T/wxmwdwG4HkYXoDU/Z4KzG6ASn+LuP+Py9IANuv9drw6a/hEGHPEf7qHXf10LYAkBLEDGAnj+S8yzAGc0APTB4XvmjzQgNoAFH67DWFxh/bUdgPfhcz0cePSXuM8MYMvuW/03ZECLANYF7F0AKRXhd54FGAkgKQCz548yQDU+7oHjHkrSX9qJLP09BswIYC//En6YAaMEaC3Afg2cLpYw2M1oESHaADQAzmKASnx8Au4aU+7xe179LzWAR/k/jAEBHz9S0OG121zutgyut96GWeaXZo+4A4kwAOXBM3+lATn9tS8ZvfpbZ7fsv9V8oL/3MWjEf5L+pgBoLcAMA2pLYBmYPn54F99qAKsIXgO2jMDxz3HQYwAOn/aSbUBtB86gf2YAZ/jPtXyZAkhCWNIWBuV6jDLeDANWBuBR9Kc7sPTP5V8132wBvAEAmPibZypSpgFaz39nDMClf30Az+S/2chMAbRbTymJuVSmv++9Ba0wQCX/1fiR+vf0cIQAnM1/0wRVBpR6gN+1xI/CjxAA18js2QY4ov60D6q/dGvei3+EAJ7JvwpsESDDgNyJgPGtyw/ve/AtJ5CGr/XUTGOGa4sBWvzjIPIsXgtfM+EM/bV5IwKoZUBpLzh8K/etHYz2nyt9ZxiwZQjtdKX4Ec/BlhTm5qbXRC6hxQBSCFhxLfp78C3ze/Snt9lcMFmM18KTDGjhG19nnd+Cbz1wLPy7G9JMyJ14uKxCcPjb39sxaSDaw+hzGGcALewiAlCbnfJLl18yZhT/FgNm6w8Y3O047aEHrxXAkga4h547Lw8+FwAj/LsNKJkw2oAYn2Jzn4fx4eeRb2Jbpz53WkoCjPQAf4fn4Ra/FRIj/EMfHz99Fp+HpcOhB1figBpE6yEKmzOgpAWnR2QPdD5rCKsYVgFaJqRLGBEA3OKraUbeg6XtPX1otfpoXd+DD/+Wlk3Cj7gDorfRnhAa1Z3jwLobo7iSntx7Ud/6t/jnQlDTwMqFmYDWkJzxopYg4lZ+BJ+efCZiA0yoLaMHP5I3qQ+6J1FGsPYJQT8LN0vnFv8SZu/s5mY8BEcmMcaeKSw3i3emyt4rsKswo0/+o88dGXgukqvIrcI+c+9Vp+E1YFb3EIlXRtqqVavqq7yBVatW1dUvoPhjur3MiX8AAAAASUVORK5CYII=",8,16,16 )
sprite_replace_base64(sprBanditBossFire,"iVBORw0KGgoAAAANSUhEUgAAAEAAAAAgCAYAAACinX6EAAAACXBIWXMAAAsSAAALEgHS3X78AAAAG3RFWHRTb2Z0d2FyZQBDZWxzeXMgU3R1ZGlvIFRvb2zBp+F8AAADAUlEQVRo3u2Zv2vbQBTH3xFBAlkKxRCCWwe6eCgYFFLiwUO3jvknQocWMnQotB1LoYMHQzMU/xMds3uwSYgg0MFLoWlDCZhCFoMNF65DeOLp6X7KUkKJ3ySZu/t89X2nd6ezUErBfQ6xNGBpwNKA8E5CGDsppUQlQi3MRdjeBlABnWYD4q3NXJvk5x8YjM9LNQK5nWYDAEDLXYTtZYAQQrkE8OgdDUsxAdm+3FC2twG2zN+GCQcv2ndnwG1k4q7YpRpwODlOr9vTOsRbm6WY4GLruL4mlGIAFUDjVe1Z5QYsyv6vDOBF2MSt1AAuonc0BLl7cx2NIHcdjaAyA8pgaw3Aqk87UxFUCM9CFEcAACATCe1pHQbj87B1WQjF21fJNs4A3c7LJgLhNHYGG4UM0P1eFTtjAIXLXYDej1am8beHV5l7Xg++PkrS65e/Y+/dGX9oF1tXhwqzuQEUfvDkLNP4+VUjN4Bta4qx9/cBvJmcOU0IYduW4xB2aoAQQnVrrRTMM2CaBbbAfUC3djOWTghmv0w23QfY2DkDUIguA2mhGQFE2yvQntadAnBqzvpz6NZaZhEBbFoLbDPicHIM8vTa3wAUEm2vpPeffz3NNH77+Huu4OwMNowCsEDN+nPru8i5VDjG+72xttDpuFSjk81XAcwGFUS3mT41gL6DvqsALYScbZptnE25yA4qgqZvf1cM1y8giqN0/eUiii6DLvZw/SKdZUXZxhngI+KkcwkykZkNCF+XZ/25/6epJ5s+ePraEB0hbGsNsAW6rtuEcEEuIbbXzsY3BbKDDLCdufEChfc+IrwzoeFzQ5Bt4wab79oK84cHAFjbX3VmKNQAWzFEbhVsYxHUuY+idMsMFyYTCfL0Gtb2V70NsHE5G7mcTbmFDPD5GDnpXGYGxz4Uiu19T2pdx96dZiPDxTGFEIpyuV7XSqA1QLddff3uI3z59CF1nD88/R0D+5RxHsDHxzHRAJ5pqrlQDbCdD5hM0p0hlPEfAZ8dvgwf/vKvsftuwD9NPgDue/4/dgAAAABJRU5ErkJggg==",2,16,16 )
sprite_replace_base64(sprBanditBossTell,"iVBORw0KGgoAAAANSUhEUgAAAEAAAAAgCAYAAACinX6EAAAAB3RJTUUH4QkEFC46RZpMkwAAABd0RVh0U29mdHdhcmUAR0xEUE5HIHZlciAzLjRxhaThAAAACHRwTkdHTEQzAAAAAEqAKR8AAAAEZ0FNQQAAsY8L/GEFAAAABmJLR0QASABvAKgKRg8wAAACEklEQVR4nOWYMU7EMBBFI0CCC9DQ0NIgChoooKDiBpxgOyQKOmpaCo7GHej2CkghXjTR13jGHnudHa8Y6WuziZOd/zyO7R3uV5/Df5Z7At5yT8Bb7glYNU7hDmCKMahHCLWAik2mrm8DZ4SoaZO7t6gCyKRkCK/xNttWyMiipI0FYBGAo+vDjSSTdJ63wWutIKSMpqIZAMnkyep4Ph+OSdi2FkCJyRYQkkMAAdxdnG9EADgEaWjUgmgFwAIhObYRAgHQTIdrL4+3kSwgWhouhWAqfTIvAdCMo6hyUpWxNAQNilj6H6dX4/fD2fzJFc7zKiBAGgR8dlAvECIAKfN4LhzTe8BaCQhAgrBrACGyADBhElaB1bwEoQcAB0Mmni7Xs+g7xmQ+94io/ev6q+ieRUOaAaSSl4YDvhytFYBVED69I5oBBhgG2hCg8rcAkNogAK/SjwDwaVAzTuY5AAkCn1KDtLWBh3l1HYArPTrmPYgAcqaltYXHgoibF5fCAyx1ufjCRgJAvftz8yfpuHsAfJODFZEa21JvS89AALs0rQLgswBJMpJ7waXMk3oZ/9FmKNd7vAo0CAgi1fve5a/uBVpB2IedYfL/AG0XaAGhTZE5AEtDMANImdHeGSitKrqvAMk8N5frwdDm+e296h+iUgMl94u5WpLP/ag2hGrutRq1ADDlqiVfm8C+yT0Bb7kn4K1fTYu8pn+bCVcAAAAASUVORK5CYII=",2,16,16 )
sprite_replace_base64(sprBanditBossDash,"iVBORw0KGgoAAAANSUhEUgAAAEAAAAAgCAYAAACinX6EAAAAB3RJTUUH4QkEFCAhUXyo8QAAABd0RVh0U29mdHdhcmUAR0xEUE5HIHZlciAzLjRxhaThAAAACHRwTkdHTEQzAAAAAEqAKR8AAAAEZ0FNQQAAsY8L/GEFAAAABmJLR0QASABvAKgKRg8wAAACe0lEQVR4nOWXPy5FQRTGJ0jYgOY1lAoioaGgUNmBFegkCp1ao1BYhsWQiB2IzhauYMh5Oc77zp+Zuc9E3OTk3XvfzPy++ebMn5sOT2/Tf47uAnpHdwG9o7uAsNCU3rsbkEXMS0irCbW6ijtp/d9iDrUbYaMytYNTDUJlWjMk113aXTSNsNhUdxQDcmNIDAfJMrUiLBM8vixXyncNQJ1cOV2evs/3FLxsrQGILzuJ+Ehv8xTgDR5srH0FCZAi0NSoXpjAAFh8jR3hm3ObCyEBWqfzf+fH+zMRERJlE59nncUmw8IZoKW+FMAN0OBIiLe4SnarAXIQ4JqCRuJmdfv95Wgy/ZWR38ssIIGeiFw3h7XDRPg1JhCb82cEWHD+jkTwLPEyQRPh8XkdekcDQHyPrfEXknPdPa1Og57pGh6GNNy/pc/Op531iddU+hSRLl4f3XKSrz1zfuRCfNeAk63XadAzv6JwXr7EBI1//bw5Dh+twijl0XTgi1MkBWUqSi7ia1NxND46YWnzj4dcna0dQJbhAtDJk3dc40sDSkyABkghFhhtT0gA2tK0swFn1/CR8dqWyvnQAH7Sons5glyA1+noMVXyeXCOZ0AJH4pAAnLIgw2Ck7vD3neg+1YD5ADI/0r4RSIohbW5jdxGbfwQoByBrQGgjkY0uPzIWZw35C1wFpyf3LT5H2VrfK4hwjfP4l4WlIrw5j/X4E3DsfjuZ3CLCWj70QxAGlpNQHzza1CK0L4CI0ZoW6RnAPE9tmeEZGufxiEBMrQ1g4c2KpEM+E12SIAEREbw7PLK/A6vqTsPdqgBD6pNoZa6pfVq2aML+GvRXUDv6C6gd3wAtGwzX2eFJlQAAAAASUVORK5CYII=",2,16,16 )
sprite_replace_base64(sprBanditBossStop,"iVBORw0KGgoAAAANSUhEUgAAAEAAAAAgCAYAAACinX6EAAAAB3RJTUUH4QkEFDoRx4hihgAAABd0RVh0U29mdHdhcmUAR0xEUE5HIHZlciAzLjRxhaThAAAACHRwTkdHTEQzAAAAAEqAKR8AAAAEZ0FNQQAAsY8L/GEFAAAABmJLR0QASABvAKgKRg8wAAACRElEQVR4nOWWvU5DMQyFI0CCF2BmZWNggQFmXqQbUndmVgYGJt6GkYFnYGLhFZBKU5TKPRw7dnJ/hIhkiZYm57vHsX3T9eIx/eeYHSAMnNKKRet5eymwXp6XKxaRM4ZYV6cnaXlzuRPNLFH31+KrteBOpM4sRDKP2oxllBLwAIxpgmb+pAZ4AcYwwpP9FhNGARj6NnjNb9F3NcHcXHLjqa2nz9dNTL2KrtQvjbG2NzQFagDysxcgst7eP6i25ztthQzwAky1BtGO1CDW4cH5vhr5t2mgPpCM8ft18RPsb4/+7ABMC/dp+mj60eJwE5EEUACvAUMAWCbIsPSLrowuAzQArQR6AJhuvj0Px2fb0PRloHaXAVMCoHbRLOWUo5xXY8DfYRJNA8qPPAAaRAuAZkCJfMPY2bXIiZDnaD1pdgCtDGRvqRkto+zBJJZb/avBMghsblHxCAB7+FJKNSMkD/YgTKQs56oBXgBNvBjgAWDa2nuFVn5aQlgSTAPkw3vFNQDtFkTKwLppctxqwaZZtQlODWCZgD2laOJtw+nTNQYZAAriSw8TbxmDUpu9YGkhE4JRvXGeLsycZxloAbAeHkuSNUrGgGe4DGDi5bN8OAsAxSMGsHKxNDUDovqqODtIg+gBqN0Epomc+L9IGW4FGQS7igwCv5fNsbcErAdi2qx5m6PXA8E6uwXR0witKcR0ccJ0G9ACgSBDTQPtnNpYjTCEMnJ7d08h8HBtT2svaDnHu7cJaOw9Q59j3pZesL8eswPMHd8/oYORPoEkFgAAAABJRU5ErkJggg==",2,16,16 )
sprite_replace_base64(sprBanditBossHurt,"iVBORw0KGgoAAAANSUhEUgAAAGAAAAAgCAYAAADtwH1UAAAAB3RJTUUH4QkEFTYxUZFndQAAABd0RVh0U29mdHdhcmUAR0xEUE5HIHZlciAzLjRxhaThAAAACHRwTkdHTEQzAAAAAEqAKR8AAAAEZ0FNQQAAsY8L/GEFAAAABmJLR0QASABvAKgKRg8wAAACdklEQVR4nO2YsU7EMAyGK4EEL8DCwsrGwMQAAxMvchsSOzMrA+/IexzKYMn1OY6d2HFPtJKlXJtr4v/74+RueTn8LHvkhbrjUbimTHRZjrXIFjEUgCT8DAgg8sfbExvP93fTIESYwA1AFAhJfByRqyHSBO4AvCGUxEqCJbQgzskEqk7/HULk+GcDoJbs5ePFKiJXQQSEEPE9IUDiGvEjIUSZ4ETsTADcpGvOq4lfwvtkFGkCVuxMAHTSNQDlPly1tjeACBOc3KCTnwmAg4CTxwKUJOGqtXvH1wLwMEEVgMc1AgCH5L7rw9VJjJagmSZwFbwHAhX79/X2+H3zsAoueSwCFh8v/+4fRxNN4O76XghY+NLGgQG0joK4T3mX+jSSZIJw8VsQygSx6DRxToBWQH2G76qcmGSCKStAAoAhcIlDlD7gLEl4iOJEeG/ThYkmCNl8rQBwCSgi08S5OiuVA+hv+bcyywRTAGhrsHSm1ix//NwifqYJNic+PXVIAUlykLr+mUwwwSbEl459XIDo+NRBHdojvmUOXiZYfciCwJWAWmDRufM3vt/zO2C2CTa5B3AQ4J4kPvesdyXMMkG4+BoIkDB2HweglfgohAwTLJxIMyFwGxVNHouPk4KQnmlPQ1x/LxM0T0E0tGL2im51ItRc6igOAt0ELWWnNgdpHhoTqPYACwDcr/WdEQA0OW6l4HYvAK0JMAA6NmcC0ybMAagJywFo9bUmj11eE5VzrQcAbk8C8amzadsNgCSs9MJR8VvCamr5++fXsPspaA1YGNtU/jSdLKKOij8qqqbuRs1BW/fNAKKEtQoQIWz2+CnJ7LED2Ez8ASPe9878SAEYAAAAAElFTkSuQmCC",3,16,16 )
sprite_replace_base64(sprBanditBossDead,"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",9,16,16 )
//}

with Floor
if !place_meeting(x,y,Player) and !place_meeting(x,y,enemy) and !place_meeting(x,y,RadChest) and !place_meeting(x,y,AmmoChest) and !place_meeting(x,y,WeaponChest) and !place_meeting(x,y,prop){
if random(3) < 1 and !place_meeting(x,y,NOWALLSHEREPLEASE){
	var myx = x+choose(0,16);
	var myy = y+choose(0,16);
	
	with instance_create(myx,myy,Wall)
		instance_create(x,y,NOWALLSHEREPLEASE)
	}
}
#define area_make_floor
instance_create(x, y, Floor);
var turn = choose(0, 0, 0, 0, 0, 0, 0, 90, 90, 90, -90, -90, -90, 180);
direction += turn;
if (turn == 180 && point_distance(x, y, 10016, 10016) > 48) {
    // turnarounds - weapon chests spawn in such
    instance_create(x, y, Floor);
    instance_create(x + 16, y + 16, WeaponChest);
}
if random(10)<1{ 
	instance_create(x+32, y, Floor);
	instance_create(x-32, y, Floor);
	instance_create(x, y+32, Floor);
	instance_create(x, y-32, Floor);
	}
if (random(19 + instance_number(FloorMaker)) > 22) {
    // dead ends - ammo chests spawn in such
    if (point_distance(x, y, 10016, 10016) > 48) {
        instance_create(x + 16, y + 16, AmmoChest);
        instance_create(x, y, Floor);
    }
    instance_destroy();
} else if (random(7) < 1) {
    // branching
    instance_create(x, y, FloorMaker);
}

#define area_pop_enemies
if (random(15) < 1) instance_create(x + 16, y + 16, JungleAssassinHide)
if (random(15) < 1) instance_create(x + 16, y + 16, JungleBandit);
if (random(15) < 1) instance_create(x + 16, y + 16, JungleFly);
if (random(15) < 1) instance_create(x + 16, y + 16, Raven);
if (random(75) < 1) repeat(6) mod_script_call("mod", "enemies", "enemychicken_create", x + 16, y + 16);

#define area_pop_props
if (random(2) < 1) instance_create(x + 16, y + 16, Bush);
if (random(14) < 1) instance_create(x + 16, y + 16, LightBeam);

#define area_mapdata(lx, ly, lp, ls, ws, ll)
if argument2 = "junkyard"
return [lx+18, 9,1,1,1];
else 
return[lx, 9,1,1,1];