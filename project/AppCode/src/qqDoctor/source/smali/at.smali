.class public final Lat;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lat$a;
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Z

.field c:Lcd;

.field d:Landroid/os/Handler;

.field e:Landroid/os/Handler;

.field private f:[Ljava/lang/String;

.field private g:[Ljava/lang/String;

.field private h:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 3

    const/16 v2, 0xa

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lat;->f:[Ljava/lang/String;

    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lat;->g:[Ljava/lang/String;

    iput-object v1, p0, Lat;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lat;->b:Z

    iput-object v1, p0, Lat;->h:Landroid/content/Context;

    iput-object v1, p0, Lat;->c:Lcd;

    iput-object v1, p0, Lat;->d:Landroid/os/Handler;

    new-instance v0, Lau;

    invoke-direct {v0, p0}, Lau;-><init>(Lat;)V

    iput-object v0, p0, Lat;->e:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Laz;

    invoke-direct {v1, v0}, Laz;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lat;->c:Lcd;

    iput-object p2, p0, Lat;->d:Landroid/os/Handler;

    iput-object p1, p0, Lat;->h:Landroid/content/Context;

    iget-object v0, p0, Lat;->c:Lcd;

    invoke-interface {v0}, Lcd;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lat;->a:Ljava/lang/String;

    iget-object v0, p0, Lat;->c:Lcd;

    invoke-interface {v0}, Lcd;->c()Ljava/lang/String;

    iget-object v0, p0, Lat;->c:Lcd;

    invoke-interface {v0}, Lcd;->a()Z

    iget-object v0, p0, Lat;->c:Lcd;

    iget-object v1, p0, Lat;->f:[Ljava/lang/String;

    iget-object v2, p0, Lat;->g:[Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcd;->a([Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method static synthetic a(Lat;II)V
    .locals 5

    const/4 v4, 0x1

    const-string v0, "Login"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handleLoginResult enter iMSG = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldk;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lat;->c:Lcd;

    invoke-interface {v0}, Lcd;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcw;->d()Lcw;

    move-result-object v0

    invoke-virtual {v0}, Lcw;->a()V

    const/16 p2, -0x3e8

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lat;->d:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    sparse-switch p2, :sswitch_data_0

    const-string v0, "unknow err"

    iget-object v2, p0, Lat;->h:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Laz;

    invoke-direct {v3, v2}, Laz;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lat;->c:Lcd;

    const/16 v2, 0x2002

    iput v2, v1, Landroid/os/Message;->what:I

    :goto_0
    iput p1, v1, Landroid/os/Message;->arg1:I

    iput p2, v1, Landroid/os/Message;->arg2:I

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lat;->d:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const-string v0, "Login"

    const-string v1, "handleLoginResult leave "

    invoke-static {v0, v1}, Ldk;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :sswitch_0
    const/16 v2, 0x1001

    iput v2, v1, Landroid/os/Message;->what:I

    goto :goto_0

    :sswitch_1
    const/16 v2, 0x200b

    iput v2, v1, Landroid/os/Message;->what:I

    invoke-static {}, Lbl;->f()Lca;

    move-result-object v2

    sget-object v3, Lca$a;->l:Lca$a;

    invoke-interface {v2, v3, v4}, Lca;->a(Lca$a;I)V

    goto :goto_0

    :sswitch_2
    const/16 v2, 0x2009

    iput v2, v1, Landroid/os/Message;->what:I

    invoke-static {}, Lbl;->f()Lca;

    move-result-object v2

    sget-object v3, Lca$a;->l:Lca$a;

    invoke-interface {v2, v3, v4}, Lca;->a(Lca$a;I)V

    goto :goto_0

    :sswitch_3
    const/16 v2, 0x2008

    iput v2, v1, Landroid/os/Message;->what:I

    goto :goto_0

    :sswitch_4
    const-string v0, "Pim pwd error"

    const/16 v2, 0x200f

    iput v2, v1, Landroid/os/Message;->what:I

    goto :goto_0

    :sswitch_5
    const-string v0, "qq account error"

    const/16 v2, 0x200c

    iput v2, v1, Landroid/os/Message;->what:I

    goto :goto_0

    :sswitch_6
    const-string v0, "verify code error"

    const/16 v2, 0x200e

    iput v2, v1, Landroid/os/Message;->what:I

    goto :goto_0

    :sswitch_7
    const-string v0, "pwd error"

    const/16 v2, 0x200d

    iput v2, v1, Landroid/os/Message;->what:I

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        -0x3e8 -> :sswitch_0
        0x0 -> :sswitch_1
        0x65 -> :sswitch_3
        0xcb -> :sswitch_7
        0xcd -> :sswitch_5
        0xd1 -> :sswitch_6
        0x3eb -> :sswitch_2
        0x3ec -> :sswitch_4
    .end sparse-switch
.end method
