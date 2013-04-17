.class public final Lci;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lci$a;
    }
.end annotation


# static fields
.field public static A:Z

.field public static B:Z

.field public static C:Z

.field public static D:Z

.field public static E:Z

.field public static F:Z

.field public static G:Z

.field public static H:Z

.field public static I:Z

.field public static J:Z

.field public static K:Z

.field public static a:Z

.field public static b:Z

.field public static c:Z

.field public static d:Z

.field public static e:Z

.field public static f:Z

.field public static g:Z

.field public static h:Z

.field public static i:Z

.field public static j:Z

.field public static k:Z

.field public static l:Z

.field public static m:Z

.field public static n:Z

.field public static o:Z

.field public static p:Z

.field public static q:Z

.field public static r:Z

.field public static s:Z

.field public static t:Z

.field public static u:Z

.field public static v:Z

.field public static w:Z

.field public static x:Z

.field public static y:Z

.field public static z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    const/4 v2, 0x1

    sput-boolean v0, Lci;->a:Z

    sput-boolean v0, Lci;->b:Z

    sput-boolean v0, Lci;->c:Z

    sput-boolean v2, Lci;->d:Z

    sput-boolean v0, Lci;->e:Z

    sput-boolean v0, Lci;->f:Z

    sput-boolean v0, Lci;->g:Z

    sput-boolean v0, Lci;->h:Z

    sput-boolean v0, Lci;->i:Z

    sput-boolean v0, Lci;->j:Z

    sput-boolean v0, Lci;->k:Z

    sput-boolean v0, Lci;->l:Z

    sput-boolean v0, Lci;->m:Z

    sput-boolean v0, Lci;->n:Z

    sput-boolean v0, Lci;->o:Z

    sput-boolean v0, Lci;->p:Z

    sput-boolean v0, Lci;->q:Z

    sput-boolean v0, Lci;->r:Z

    sput-boolean v0, Lci;->s:Z

    sput-boolean v0, Lci;->t:Z

    sput-boolean v0, Lci;->u:Z

    sput-boolean v0, Lci;->v:Z

    sput-boolean v0, Lci;->w:Z

    sput-boolean v0, Lci;->x:Z

    sput-boolean v0, Lci;->y:Z

    sput-boolean v0, Lci;->z:Z

    sput-boolean v0, Lci;->A:Z

    sput-boolean v0, Lci;->B:Z

    sput-boolean v0, Lci;->C:Z

    sput-boolean v0, Lci;->D:Z

    sput-boolean v0, Lci;->E:Z

    sput-boolean v0, Lci;->F:Z

    sput-boolean v0, Lci;->G:Z

    sput-boolean v0, Lci;->H:Z

    sput-boolean v0, Lci;->I:Z

    sput-boolean v0, Lci;->J:Z

    sput-boolean v0, Lci;->K:Z

    const-string v0, "OMS1_5"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sput-boolean v2, Lci;->b:Z

    :cond_0
    :goto_0
    invoke-static {}, Lci;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sony ericsson"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    sput-boolean v2, Lci;->s:Z

    :cond_1
    return-void

    :cond_2
    const-string v0, "LG-P500"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sput-boolean v2, Lci;->d:Z

    goto :goto_0

    :cond_3
    const-string v0, "GT-T959"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sput-boolean v2, Lci;->a:Z

    sput-boolean v2, Lci;->c:Z

    sput-boolean v2, Lci;->z:Z

    sput-boolean v2, Lci;->x:Z

    sput-boolean v2, Lci;->y:Z

    goto :goto_0

    :cond_4
    const-string v0, "XT800"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    sput-boolean v2, Lci;->c:Z

    sput-boolean v2, Lci;->C:Z

    sput-boolean v2, Lci;->a:Z

    sput-boolean v2, Lci;->B:Z

    goto :goto_0

    :cond_5
    const-string v0, "HTC Wildfire"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sput-boolean v2, Lci;->d:Z

    goto :goto_0

    :cond_6
    const-string v0, "D530"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    sput-boolean v2, Lci;->c:Z

    sput-boolean v2, Lci;->a:Z

    goto :goto_0

    :cond_7
    const-string v0, "HTC Tattoo"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    sput-boolean v2, Lci;->e:Z

    sput-boolean v2, Lci;->d:Z

    goto :goto_0

    :cond_8
    const-string v0, "MB200"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "ME200"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_9
    sput-boolean v2, Lci;->a:Z

    sput-boolean v2, Lci;->f:Z

    sput-boolean v2, Lci;->o:Z

    sput-boolean v2, Lci;->j:Z

    sput-boolean v2, Lci;->r:Z

    goto/16 :goto_0

    :cond_a
    const-string v0, "ME525"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    sput-boolean v2, Lci;->a:Z

    sput-boolean v2, Lci;->f:Z

    sput-boolean v2, Lci;->o:Z

    sput-boolean v2, Lci;->j:Z

    sput-boolean v2, Lci;->v:Z

    goto/16 :goto_0

    :cond_b
    const-string v0, "GT-I9000"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    sput-boolean v2, Lci;->c:Z

    goto/16 :goto_0

    :cond_c
    const-string v0, "MotoA953"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    sput-boolean v2, Lci;->f:Z

    sput-boolean v2, Lci;->v:Z

    sput-boolean v2, Lci;->I:Z

    sput-boolean v2, Lci;->K:Z

    goto/16 :goto_0

    :cond_d
    const-string v0, "meizu_m9"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "HTC Desire"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    sput-boolean v2, Lci;->d:Z

    goto/16 :goto_0

    :cond_e
    const-string v0, "ME501"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    sput-boolean v2, Lci;->f:Z

    sput-boolean v2, Lci;->o:Z

    sput-boolean v2, Lci;->j:Z

    sput-boolean v2, Lci;->v:Z

    sput-boolean v2, Lci;->I:Z

    sput-boolean v2, Lci;->J:Z

    goto/16 :goto_0

    :cond_f
    const-string v0, "C8500"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    sput-boolean v2, Lci;->c:Z

    sput-boolean v2, Lci;->d:Z

    sput-boolean v2, Lci;->g:Z

    goto/16 :goto_0

    :cond_10
    const-string v0, "SCH-i909"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    sput-boolean v2, Lci;->c:Z

    sput-boolean v2, Lci;->z:Z

    goto/16 :goto_0

    :cond_11
    const-string v0, "E10i"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "GT-I5508"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    sput-boolean v2, Lci;->c:Z

    sput-boolean v2, Lci;->z:Z

    sput-boolean v2, Lci;->t:Z

    goto/16 :goto_0

    :cond_12
    const-string v0, "GT-I5801"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    sput-boolean v2, Lci;->c:Z

    goto/16 :goto_0

    :cond_13
    const-string v0, "W180"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "XT701"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    sput-boolean v2, Lci;->t:Z

    goto/16 :goto_0

    :cond_14
    const-string v0, "ZTE-C N600"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    sput-boolean v2, Lci;->h:Z

    goto/16 :goto_0

    :cond_15
    const-string v0, "U8500 HiQQ"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ME600"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    sput-boolean v2, Lci;->A:Z

    goto/16 :goto_0

    :cond_16
    const-string v0, "Galaxy"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    sput-boolean v2, Lci;->i:Z

    goto/16 :goto_0

    :cond_17
    const-string v0, "Liquid"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    sput-boolean v2, Lci;->o:Z

    sput-boolean v2, Lci;->k:Z

    sput-boolean v2, Lci;->j:Z

    goto/16 :goto_0

    :cond_18
    const-string v0, "ZTE-U V880"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    sput-boolean v2, Lci;->h:Z

    sput-boolean v2, Lci;->j:Z

    goto/16 :goto_0

    :cond_19
    const-string v0, "ZTE-C R750"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    sput-boolean v2, Lci;->h:Z

    goto/16 :goto_0

    :cond_1a
    const-string v0, "W606"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    sput-boolean v2, Lci;->l:Z

    sput-boolean v2, Lci;->j:Z

    goto/16 :goto_0

    :cond_1b
    const-string v0, "GT540"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    sput-boolean v2, Lci;->m:Z

    sput-boolean v2, Lci;->n:Z

    goto/16 :goto_0

    :cond_1c
    const-string v0, "Pulse Mini"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    sput-boolean v2, Lci;->j:Z

    sput-boolean v2, Lci;->o:Z

    sput-boolean v2, Lci;->p:Z

    goto/16 :goto_0

    :cond_1d
    const-string v0, "HTC Legend"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    sput-boolean v2, Lci;->j:Z

    sput-boolean v2, Lci;->q:Z

    sput-boolean v2, Lci;->o:Z

    goto/16 :goto_0

    :cond_1e
    const-string v0, "HERO200"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    sput-boolean v2, Lci;->j:Z

    sput-boolean v2, Lci;->q:Z

    sput-boolean v2, Lci;->o:Z

    goto/16 :goto_0

    :cond_1f
    const-string v0, "XT300"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    sput-boolean v2, Lci;->t:Z

    goto/16 :goto_0

    :cond_20
    const-string v0, "R800i"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    sput-boolean v2, Lci;->u:Z

    goto/16 :goto_0

    :cond_21
    const-string v0, "HTC Wildfire"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    sput-boolean v2, Lci;->q:Z

    goto/16 :goto_0

    :cond_22
    const-string v0, "T-Mobile myTouch 3G Slide"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    sput-boolean v2, Lci;->w:Z

    sput-boolean v2, Lci;->q:Z

    goto/16 :goto_0

    :cond_23
    const-string v0, "PC36100"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    sput-boolean v2, Lci;->w:Z

    sput-boolean v2, Lci;->q:Z

    goto/16 :goto_0

    :cond_24
    const-string v0, "SCH-W899"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    sput-boolean v2, Lci;->c:Z

    sput-boolean v2, Lci;->z:Z

    goto/16 :goto_0

    :cond_25
    const-string v0, "XT882"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    sput-boolean v2, Lci;->c:Z

    sput-boolean v2, Lci;->C:Z

    sput-boolean v2, Lci;->B:Z

    goto/16 :goto_0

    :cond_26
    const-string v0, "HTC Sensation Z710e"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    sput-boolean v2, Lci;->q:Z

    goto/16 :goto_0

    :cond_27
    const-string v0, "HTC Aria A6380"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    sput-boolean v2, Lci;->q:Z

    goto/16 :goto_0

    :cond_28
    const-string v0, "Desire HD"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    sput-boolean v2, Lci;->q:Z

    goto/16 :goto_0

    :cond_29
    const-string v0, "Ideos"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    sput-boolean v2, Lci;->u:Z

    goto/16 :goto_0

    :cond_2a
    const-string v0, "MB502"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    sput-boolean v2, Lci;->f:Z

    sput-boolean v2, Lci;->v:Z

    sput-boolean v2, Lci;->I:Z

    sput-boolean v2, Lci;->J:Z

    goto/16 :goto_0

    :cond_2b
    const-string v0, "ME511"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    sput-boolean v2, Lci;->f:Z

    sput-boolean v2, Lci;->v:Z

    sput-boolean v2, Lci;->I:Z

    sput-boolean v2, Lci;->J:Z

    goto/16 :goto_0

    :cond_2c
    const-string v0, "MB501"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    sput-boolean v2, Lci;->f:Z

    sput-boolean v2, Lci;->v:Z

    sput-boolean v2, Lci;->I:Z

    sput-boolean v2, Lci;->J:Z

    goto/16 :goto_0

    :cond_2d
    const-string v0, "C8600"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    sput-boolean v2, Lci;->c:Z

    goto/16 :goto_0

    :cond_2e
    const-string v0, "XT301"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    sput-boolean v2, Lci;->c:Z

    sput-boolean v2, Lci;->C:Z

    sput-boolean v2, Lci;->B:Z

    goto/16 :goto_0

    :cond_2f
    const-string v0, "ADR6350"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    sput-boolean v2, Lci;->q:Z

    goto/16 :goto_0

    :cond_30
    const-string v0, "HTC Desire S"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    sput-boolean v2, Lci;->q:Z

    goto/16 :goto_0

    :cond_31
    const-string v0, "ZTE-U X850"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    sput-boolean v2, Lci;->h:Z

    sput-boolean v2, Lci;->D:Z

    sput-boolean v2, Lci;->t:Z

    sput-boolean v2, Lci;->j:Z

    goto/16 :goto_0

    :cond_32
    const-string v0, "A8188"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    sput-boolean v2, Lci;->E:Z

    goto/16 :goto_0

    :cond_33
    const-string v0, "HTC ChaCha A810e"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    sput-boolean v2, Lci;->q:Z

    goto/16 :goto_0

    :cond_34
    const-string v0, "GT-S5570"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    sput-boolean v2, Lci;->c:Z

    sput-boolean v2, Lci;->z:Z

    sput-boolean v2, Lci;->y:Z

    goto/16 :goto_0

    :cond_35
    const-string v0, "A6388"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    sput-boolean v2, Lci;->e:Z

    goto/16 :goto_0

    :cond_36
    const-string v0, "GT-S5830"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    sput-boolean v2, Lci;->c:Z

    sput-boolean v2, Lci;->z:Z

    sput-boolean v2, Lci;->y:Z

    goto/16 :goto_0

    :cond_37
    const-string v0, "HTC Glacier"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    sput-boolean v2, Lci;->q:Z

    goto/16 :goto_0

    :cond_38
    const-string v0, "SCH-i569"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    sput-boolean v2, Lci;->c:Z

    sput-boolean v2, Lci;->z:Z

    sput-boolean v2, Lci;->y:Z

    goto/16 :goto_0

    :cond_39
    const-string v0, "ZTE-C N700"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    sput-boolean v2, Lci;->h:Z

    goto/16 :goto_0

    :cond_3a
    const-string v0, "LG-P970"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    sput-boolean v2, Lci;->F:Z

    goto/16 :goto_0

    :cond_3b
    const-string v0, "C8800"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    sput-boolean v2, Lci;->c:Z

    goto/16 :goto_0

    :cond_3c
    const-string v0, "SGH-T959"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    sput-boolean v2, Lci;->y:Z

    sput-boolean v2, Lci;->c:Z

    sput-boolean v2, Lci;->z:Z

    goto/16 :goto_0

    :cond_3d
    const-string v0, "E16i"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    sput-boolean v2, Lci;->u:Z

    goto/16 :goto_0

    :cond_3e
    const-string v0, "E400"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    sput-boolean v2, Lci;->k:Z

    goto/16 :goto_0

    :cond_3f
    const-string v0, "Garmin-Asus A50"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "HTC Wildfire S A510e"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "M9"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MB525"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    sput-boolean v2, Lci;->a:Z

    sput-boolean v2, Lci;->f:Z

    sput-boolean v2, Lci;->o:Z

    sput-boolean v2, Lci;->j:Z

    sput-boolean v2, Lci;->v:Z

    sput-boolean v2, Lci;->K:Z

    sput-boolean v2, Lci;->I:Z

    sput-boolean v2, Lci;->G:Z

    goto/16 :goto_0

    :cond_40
    const-string v0, "W711"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    sput-boolean v2, Lci;->H:Z

    sput-boolean v2, Lci;->t:Z

    goto/16 :goto_0

    :cond_41
    const-string v0, "Alcatel OT-980"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    sput-boolean v2, Lci;->t:Z

    goto/16 :goto_0

    :cond_42
    const-string v0, "GT-I6500U"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sput-boolean v2, Lci;->t:Z

    goto/16 :goto_0
.end method

.method private static a()Ljava/lang/String;
    .locals 2

    const-string v1, "UNKNOW"

    invoke-static {}, Lde;->g()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "db"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldb;

    if-eqz v0, :cond_0

    invoke-static {}, Ldb;->a()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    invoke-static {}, Lci$a;->values()[Lci$a;

    move-result-object v2

    array-length v3, v2

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_0

    :goto_1
    return v0

    :cond_0
    aget-object v4, v2, v1

    invoke-virtual {v4}, Lci$a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
