.class public Lcom/tencent/powermanager/view/PowerManagerView;
.super Lcom/tencent/powermanager/uilib/view/BaseTabView;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lbx;
.implements Lcj$a;
.implements Lcom/tencent/powermanager/service/BatteryEventReceiver$a;
.implements Lcom/tencent/powermanager/service/ModeEventReceiver$a;
.implements Lcom/tencent/powermanager/service/NetWorkEventReceiver$a;
.implements Lcom/tencent/powermanager/uilib/view/BatteryModeSwitchView$a;
.implements Lcom/tencent/powermanager/uilib/view/BatteryModeSwitchView$b;


# instance fields
.field private b:Lcom/tencent/powermanager/uilib/view/BatteryModeSwitchView;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ldg;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/tencent/powermanager/uilib/SwitchButtonView;

.field private e:Lcom/tencent/powermanager/uilib/SwitchButtonView;

.field private f:Lcom/tencent/powermanager/uilib/SwitchButtonView;

.field private g:Lcom/tencent/powermanager/uilib/SwitchButtonView;

.field private h:Lcom/tencent/powermanager/uilib/SwitchButtonView;

.field private i:Lap;

.field private j:Laq;

.field private k:Lr;

.field private l:[I

.field private m:I

.field private n:Z

.field private o:Ls;

.field private p:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ldg;",
            ">;"
        }
    .end annotation
.end field

.field private q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbf;",
            ">;"
        }
    .end annotation
.end field

.field private r:Lag;

.field private s:Lcom/tencent/powermanager/uilib/ExpectTimeView;

.field private t:Lcom/tencent/powermanager/uilib/view/CircleBatteryView;

.field private u:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/tencent/powermanager/uilib/view/BaseTabView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/powermanager/view/PowerManagerView;->b:Lcom/tencent/powermanager/uilib/view/BatteryModeSwitchView;

    iput-object v0, p0, Lcom/tencent/powermanager/view/PowerManagerView;->c:Ljava/util/List;

    iput-object v0, p0, Lcom/tencent/powermanager/view/PowerManagerView;->d:Lcom/tencent/powermanager/uilib/SwitchButtonView;

    iput-object v0, p0, Lcom/tencent/powermanager/view/PowerManagerView;->e:Lcom/tencent/powermanager/uilib/SwitchButtonView;

    iput-object v0, p0, Lcom/tencent/powermanager/view/PowerManagerView;->f:Lcom/tencent/powermanager/uilib/SwitchButtonView;

    iput-object v0, p0, Lcom/tencent/powermanager/view/PowerManagerView;->g:Lcom/tencent/powermanager/uilib/SwitchButtonView;

    iput-object v0, p0, Lcom/tencent/powermanager/view/PowerManagerView;->h:Lcom/tencent/powermanager/uilib/SwitchButtonView;

    iput-object v0, p0, Lcom/tencent/powermanager/view/PowerManagerView;->i:Lap;

    iput-object v0, p0, Lcom/tencent/powermanager/view/PowerManagerView;->j:Laq;

    iput-object v0, p0, Lcom/tencent/powermanager/view/PowerManagerView;->k:Lr;

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/tencent/powermanager/view/PowerManagerView;->l:[I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/powermanager/view/PowerManagerView;->n:Z

    new-instance v0, Lec;

    invoke-direct {v0, p0}, Lec;-><init>(Lcom/tencent/powermanager/view/PowerManagerView;)V

    iput-object v0, p0, Lcom/tencent/powermanager/view/PowerManagerView;->u:Landroid/os/Handler;

    return-void

    nop

    :array_0
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x32t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method

.method public static synthetic a(Lcom/tencent/powermanager/view/PowerManagerView;I)Lbf;
    .locals 1

    invoke-direct {p0, p1}, Lcom/tencent/powermanager/view/PowerManagerView;->c(I)Lbf;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic a(Lcom/tencent/powermanager/view/PowerManagerView;)Lcom/tencent/powermanager/uilib/view/CircleBatteryView;
    .locals 1

    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerManagerView;->t:Lcom/tencent/powermanager/uilib/view/CircleBatteryView;

    return-object v0
.end method

.method public static synthetic a(Lcom/tencent/powermanager/view/PowerManagerView;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/tencent/powermanager/view/PowerManagerView;->q:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic a(Landroid/content/Intent;Lbf;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/tencent/powermanager/view/PowerManagerView;->b(Landroid/content/Intent;Lbf;)V

    return-void
.end method

.method public static synthetic b(Lcom/tencent/powermanager/view/PowerManagerView;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerManagerView;->c:Ljava/util/List;

    return-object v0
.end method

.method private static b(Landroid/content/Intent;Lbf;)V
    .locals 2

    const-string v0, "_id"

    iget v1, p1, Lbf;->a:I

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "mode_name"

    iget-object v1, p1, Lbf;->b:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "brightness"

    iget v1, p1, Lbf;->c:I

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "screen_time"

    iget v1, p1, Lbf;->d:I

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "animation"

    iget v1, p1, Lbf;->e:I

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "wifi_state"

    iget-boolean v1, p1, Lbf;->f:Z

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "network_state"

    iget-boolean v1, p1, Lbf;->g:Z

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "bluetooth_state"

    iget-boolean v1, p1, Lbf;->h:Z

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "auto_sync"

    iget-boolean v1, p1, Lbf;->i:Z

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "vibrate"

    iget-boolean v1, p1, Lbf;->j:Z

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "haptic_feedback"

    iget-boolean v1, p1, Lbf;->k:Z

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "airplane_state"

    iget v1, p1, Lbf;->l:I

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-void
.end method

.method public static synthetic c(Lcom/tencent/powermanager/view/PowerManagerView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerManagerView;->u:Landroid/os/Handler;

    return-object v0
.end method

.method private c(I)Lbf;
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerManagerView;->q:Ljava/util/List;

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerManagerView;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbf;

    iget v3, v0, Lbf;->a:I

    if-ne v3, p1, :cond_1

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public static synthetic d(Lcom/tencent/powermanager/view/PowerManagerView;)Ls;
    .locals 1

    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerManagerView;->o:Ls;

    return-object v0
.end method

.method private d(I)V
    .locals 3

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerManagerView;->g:Lcom/tencent/powermanager/uilib/SwitchButtonView;

    const v1, 0x7f02015a

    invoke-virtual {v0, v1}, Lcom/tencent/powermanager/uilib/SwitchButtonView;->setIcon(I)V

    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerManagerView;->g:Lcom/tencent/powermanager/uilib/SwitchButtonView;

    iget-object v1, p0, Lcom/tencent/powermanager/view/PowerManagerView;->a:Landroid/content/Context;

    const v2, 0x7f060028

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/powermanager/uilib/SwitchButtonView;->setNameText(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerManagerView;->g:Lcom/tencent/powermanager/uilib/SwitchButtonView;

    const v1, 0x7f020159

    invoke-virtual {v0, v1}, Lcom/tencent/powermanager/uilib/SwitchButtonView;->setIcon(I)V

    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerManagerView;->g:Lcom/tencent/powermanager/uilib/SwitchButtonView;

    iget-object v1, p0, Lcom/tencent/powermanager/view/PowerManagerView;->a:Landroid/content/Context;

    const v2, 0x7f060029

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/powermanager/uilib/SwitchButtonView;->setNameText(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerManagerView;->g:Lcom/tencent/powermanager/uilib/SwitchButtonView;

    const v1, 0x7f02015b

    invoke-virtual {v0, v1}, Lcom/tencent/powermanager/uilib/SwitchButtonView;->setIcon(I)V

    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerManagerView;->g:Lcom/tencent/powermanager/uilib/SwitchButtonView;

    iget-object v1, p0, Lcom/tencent/powermanager/view/PowerManagerView;->a:Landroid/content/Context;

    const v2, 0x7f06002a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/powermanager/uilib/SwitchButtonView;->setNameText(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerManagerView;->g:Lcom/tencent/powermanager/uilib/SwitchButtonView;

    const v1, 0x7f020158

    invoke-virtual {v0, v1}, Lcom/tencent/powermanager/uilib/SwitchButtonView;->setIcon(I)V

    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerManagerView;->g:Lcom/tencent/powermanager/uilib/SwitchButtonView;

    iget-object v1, p0, Lcom/tencent/powermanager/view/PowerManagerView;->a:Landroid/content/Context;

    const v2, 0x7f06002b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/powermanager/uilib/SwitchButtonView;->setNameText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static synthetic e(Lcom/tencent/powermanager/view/PowerManagerView;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerManagerView;->p:Ljava/util/ArrayList;

    return-object v0
.end method

.method private e(I)V
    .locals 3

    const/16 v2, 0x50

    const/16 v1, 0x14

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerManagerView;->h:Lcom/tencent/powermanager/uilib/SwitchButtonView;

    const v1, 0x7f020155

    invoke-virtual {v0, v1}, Lcom/tencent/powermanager/uilib/SwitchButtonView;->setIcon(I)V

    const/4 v0, 0x3

    iput v0, p0, Lcom/tencent/powermanager/view/PowerManagerView;->m:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    mul-int/lit8 v0, p1, 0x64

    div-int/lit16 v0, v0, 0xff

    if-ltz v0, :cond_2

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerManagerView;->h:Lcom/tencent/powermanager/uilib/SwitchButtonView;

    const v1, 0x7f020152

    invoke-virtual {v0, v1}, Lcom/tencent/powermanager/uilib/SwitchButtonView;->setIcon(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/powermanager/view/PowerManagerView;->m:I

    goto :goto_0

    :cond_2
    if-lt v0, v1, :cond_3

    if-ge v0, v2, :cond_3

    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerManagerView;->h:Lcom/tencent/powermanager/uilib/SwitchButtonView;

    const v1, 0x7f020154

    invoke-virtual {v0, v1}, Lcom/tencent/powermanager/uilib/SwitchButtonView;->setIcon(I)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/tencent/powermanager/view/PowerManagerView;->m:I

    goto :goto_0

    :cond_3
    if-lt v0, v2, :cond_0

    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerManagerView;->h:Lcom/tencent/powermanager/uilib/SwitchButtonView;

    const v1, 0x7f020153

    invoke-virtual {v0, v1}, Lcom/tencent/powermanager/uilib/SwitchButtonView;->setIcon(I)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/tencent/powermanager/view/PowerManagerView;->m:I

    goto :goto_0
.end method

.method public static synthetic f(Lcom/tencent/powermanager/view/PowerManagerView;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerManagerView;->q:Ljava/util/List;

    return-object v0
.end method

.method public static synthetic g(Lcom/tencent/powermanager/view/PowerManagerView;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/powermanager/view/PowerManagerView;->k()V

    return-void
.end method

.method public static synthetic h(Lcom/tencent/powermanager/view/PowerManagerView;)Lcom/tencent/powermanager/uilib/view/BatteryModeSwitchView;
    .locals 1

    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerManagerView;->b:Lcom/tencent/powermanager/uilib/view/BatteryModeSwitchView;

    return-object v0
.end method

.method public static synthetic i(Lcom/tencent/powermanager/view/PowerManagerView;)Lag;
    .locals 1

    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerManagerView;->r:Lag;

    return-object v0
.end method

.method private i()V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerManagerView;->a:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/tencent/powermanager/view/PowerManagerView;->i:Lap;

    invoke-virtual {v2}, Lap;->b()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerManagerView;->d:Lcom/tencent/powermanager/uilib/SwitchButtonView;

    const v2, 0x7f02015d

    invoke-virtual {v0, v2}, Lcom/tencent/powermanager/uilib/SwitchButtonView;->setIcon(I)V

    :goto_0
    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerManagerView;->i:Lap;

    invoke-virtual {v0}, Lap;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerManagerView;->a:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerManagerView;->k:Lr;

    invoke-virtual {v0}, Lr;->g()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerManagerView;->e:Lcom/tencent/powermanager/uilib/SwitchButtonView;

    const v1, 0x7f020151

    invoke-virtual {v0, v1}, Lcom/tencent/powermanager/uilib/SwitchButtonView;->setIcon(I)V

    :goto_2
    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerManagerView;->k:Lr;

    invoke-virtual {v0}, Lr;->g()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerManagerView;->f:Lcom/tencent/powermanager/uilib/SwitchButtonView;

    const v1, 0x7f020157

    invoke-virtual {v0, v1}, Lcom/tencent/powermanager/uilib/SwitchButtonView;->setIcon(I)V

    :goto_3
    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerManagerView;->k:Lr;

    invoke-virtual {v0}, Lr;->l()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/tencent/powermanager/view/PowerManagerView;->d(I)V

    invoke-direct {p0}, Lcom/tencent/powermanager/view/PowerManagerView;->l()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerManagerView;->d:Lcom/tencent/powermanager/uilib/SwitchButtonView;

    const v2, 0x7f02015c

    invoke-virtual {v0, v2}, Lcom/tencent/powermanager/uilib/SwitchButtonView;->setIcon(I)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerManagerView;->e:Lcom/tencent/powermanager/uilib/SwitchButtonView;

    const v2, 0x7f020150

    invoke-virtual {v0, v2}, Lcom/tencent/powermanager/uilib/SwitchButtonView;->setIcon(I)V

    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerManagerView;->i:Lap;

    invoke-virtual {v0, v1}, Lap;->b(Z)Z

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerManagerView;->f:Lcom/tencent/powermanager/uilib/SwitchButtonView;

    const v1, 0x7f020156

    invoke-virtual {v0, v1}, Lcom/tencent/powermanager/uilib/SwitchButtonView;->setIcon(I)V

    goto :goto_3
.end method

.method public static synthetic j(Lcom/tencent/powermanager/view/PowerManagerView;)I
    .locals 1

    invoke-direct {p0}, Lcom/tencent/powermanager/view/PowerManagerView;->m()I

    move-result v0

    return v0
.end method

.method private declared-synchronized j()V
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lea;

    invoke-direct {v1, p0}, Lea;-><init>(Lcom/tencent/powermanager/view/PowerManagerView;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static synthetic k(Lcom/tencent/powermanager/view/PowerManagerView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerManagerView;->a:Landroid/content/Context;

    return-object v0
.end method

.method private k()V
    .locals 4

    invoke-static {}, Ls$a;->d()Lr;

    move-result-object v0

    invoke-virtual {v0}, Lr;->c()I

    move-result v1

    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerManagerView;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldg;

    iget v3, v0, Ldg;->a:I

    if-ne v3, v1, :cond_0

    const/4 v3, 0x1

    iput-boolean v3, v0, Ldg;->b:Z

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    iput-boolean v3, v0, Ldg;->b:Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static synthetic l(Lcom/tencent/powermanager/view/PowerManagerView;)Lr;
    .locals 1

    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerManagerView;->k:Lr;

    return-object v0
.end method

.method private l()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerManagerView;->j:Laq;

    invoke-virtual {v0}, Laq;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/tencent/powermanager/view/PowerManagerView;->e(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerManagerView;->j:Laq;

    iget-object v1, p0, Lcom/tencent/powermanager/view/PowerManagerView;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Laq;->a(Landroid/content/ContentResolver;)I

    move-result v0

    goto :goto_0
.end method

.method private m()I
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/tencent/powermanager/view/PowerManagerView;->q:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbf;

    iget v3, v0, Lbf;->a:I

    if-ge v1, v3, :cond_2

    iget v0, v0, Lbf;->a:I

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_0
    const/16 v0, 0xa

    if-gt v1, v0, :cond_1

    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerManagerView;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0xa

    :goto_2
    return v0

    :cond_1
    add-int/lit8 v0, v1, 0x1

    goto :goto_2

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public static synthetic m(Lcom/tencent/powermanager/view/PowerManagerView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerManagerView;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static synthetic n(Lcom/tencent/powermanager/view/PowerManagerView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerManagerView;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static synthetic o(Lcom/tencent/powermanager/view/PowerManagerView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerManagerView;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static synthetic p(Lcom/tencent/powermanager/view/PowerManagerView;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/powermanager/view/PowerManagerView;->j()V

    return-void
.end method

.method public static synthetic q(Lcom/tencent/powermanager/view/PowerManagerView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerManagerView;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static synthetic r(Lcom/tencent/powermanager/view/PowerManagerView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerManagerView;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static synthetic s(Lcom/tencent/powermanager/view/PowerManagerView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerManagerView;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static synthetic t(Lcom/tencent/powermanager/view/PowerManagerView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerManagerView;->a:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/powermanager/view/PowerManagerView;->i()V

    return-void
.end method

.method public final a(D)V
    .locals 7

    invoke-static {}, Lao;->a()Lao;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/powermanager/view/PowerManagerView;->s:Lcom/tencent/powermanager/uilib/ExpectTimeView;

    invoke-virtual {v0}, Lao;->b()I

    move-result v2

    invoke-virtual {v0}, Lao;->c()I

    move-result v3

    double-to-int v4, p1

    const-wide/high16 v5, 0x404e

    mul-double/2addr v5, p1

    double-to-int v5, v5

    rem-int/lit8 v5, v5, 0x3c

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/tencent/powermanager/uilib/ExpectTimeView;->setTimeText(IIII)V

    invoke-virtual {v0, p1, p2}, Lao;->a(D)V

    return-void
.end method

.method public final a(I)V
    .locals 5

    const v2, 0x7f060015

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/16 v0, 0xff

    if-ne p1, v0, :cond_1

    new-instance v0, Lbf;

    invoke-direct {v0}, Lbf;-><init>()V

    invoke-direct {p0}, Lcom/tencent/powermanager/view/PowerManagerView;->m()I

    move-result v1

    iput v1, v0, Lbf;->a:I

    iget-object v1, p0, Lcom/tencent/powermanager/view/PowerManagerView;->a:Landroid/content/Context;

    const v2, 0x7f06005d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/tencent/powermanager/view/PowerManagerView;->q:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lbf;->b:Ljava/lang/String;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/tencent/powermanager/view/PowerManagerView;->a:Landroid/content/Context;

    const-class v3, Lcom/tencent/powermanager/ui/DIYSaveModeActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v1, v0}, Lcom/tencent/powermanager/view/PowerManagerView;->b(Landroid/content/Intent;Lbf;)V

    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerManagerView;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const v0, 0xc35f

    invoke-static {v0}, Lab;->a(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Ls$a;->d()Lr;

    move-result-object v0

    invoke-virtual {v0}, Lr;->c()I

    move-result v0

    if-eq v0, p1, :cond_0

    packed-switch p1, :pswitch_data_0

    invoke-direct {p0, p1}, Lcom/tencent/powermanager/view/PowerManagerView;->c(I)Lbf;

    move-result-object v0

    iget-object v1, v0, Lbf;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerManagerView;->a:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Object;

    aput-object v1, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    new-instance v2, Lde;

    iget-object v3, p0, Lcom/tencent/powermanager/view/PowerManagerView;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Lde;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Lde;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v0}, Lde;->a(Ljava/lang/CharSequence;)V

    invoke-virtual {v2}, Lde;->c()V

    const v0, 0x7f060004

    new-instance v1, Leg;

    invoke-direct {v1, p0, p1, v2}, Leg;-><init>(Lcom/tencent/powermanager/view/PowerManagerView;ILde;)V

    const/16 v3, 0x8

    invoke-virtual {v2, v0, v1, v3}, Lde;->a(ILandroid/view/View$OnClickListener;I)V

    new-instance v0, Leh;

    invoke-direct {v0, v2}, Leh;-><init>(Lde;)V

    invoke-virtual {v2, v0}, Lde;->a(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2}, Lde;->show()V

    goto :goto_0

    :pswitch_0
    sget-object v1, Ls;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerManagerView;->a:Landroid/content/Context;

    const v2, 0x7f060012

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :pswitch_1
    sget-object v1, Ls;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerManagerView;->a:Landroid/content/Context;

    const v2, 0x7f060013

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :pswitch_2
    sget-object v1, Ls;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerManagerView;->a:Landroid/content/Context;

    const v2, 0x7f060014

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :pswitch_3
    sget-object v1, Ls;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerManagerView;->a:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Object;

    aput-object v1, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const v2, 0xc36b

    invoke-static {v2}, Lab;->a(I)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final a(Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerManagerView;->t:Lcom/tencent/powermanager/uilib/view/CircleBatteryView;

    sget v1, Lcom/tencent/powermanager/service/BatteryEventReceiver;->a:I

    invoke-virtual {v0, v1}, Lcom/tencent/powermanager/uilib/view/CircleBatteryView;->setBatteryLevel(I)V

    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerManagerView;->t:Lcom/tencent/powermanager/uilib/view/CircleBatteryView;

    sget-boolean v1, Lcom/tencent/powermanager/service/BatteryEventReceiver;->c:Z

    invoke-virtual {v0, v1}, Lcom/tencent/powermanager/uilib/view/CircleBatteryView;->setIsCharging(Z)V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerManagerView;->k:Lr;

    invoke-virtual {v0}, Lr;->l()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/tencent/powermanager/view/PowerManagerView;->d(I)V

    invoke-direct {p0}, Lcom/tencent/powermanager/view/PowerManagerView;->l()V

    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerManagerView;->j:Laq;

    invoke-virtual {v0}, Laq;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerManagerView;->a:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/tencent/powermanager/view/PowerManagerView;->j:Laq;

    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerManagerView;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v2, v1, v0}, Laq;->a(ILandroid/app/Activity;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerManagerView;->j:Laq;

    iget-object v1, p0, Lcom/tencent/powermanager/view/PowerManagerView;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Laq;->a(Landroid/content/ContentResolver;)I

    move-result v0

    move v1, v0

    goto :goto_0
.end method

.method public final b(I)V
    .locals 8

    const v7, 0x7f06000a

    const/4 v2, 0x4

    const/4 v6, 0x1

    new-instance v0, Ldd;

    iget-object v1, p0, Lcom/tencent/powermanager/view/PowerManagerView;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Ldd;-><init>(Landroid/content/Context;)V

    const/16 v1, 0xff

    if-eq p1, v1, :cond_0

    if-eq p1, v2, :cond_0

    invoke-static {}, Ls$a;->d()Lr;

    move-result-object v1

    invoke-virtual {v1}, Lr;->c()I

    move-result v1

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-ge p1, v2, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Ldd;->a()V

    new-instance v2, Ldi;

    invoke-direct {v2}, Ldi;-><init>()V

    iget-object v3, p0, Lcom/tencent/powermanager/view/PowerManagerView;->a:Landroid/content/Context;

    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Ldi;->a:Ljava/lang/String;

    iput v6, v2, Ldi;->b:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v1}, Ldd;->a(Ljava/util/ArrayList;)V

    new-instance v1, Led;

    invoke-direct {v1, p0, p1, v0}, Led;-><init>(Lcom/tencent/powermanager/view/PowerManagerView;ILdd;)V

    invoke-virtual {v0, v1}, Ldd;->a(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {v0}, Ldd;->show()V

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1}, Lcom/tencent/powermanager/view/PowerManagerView;->c(I)Lbf;

    move-result-object v2

    invoke-static {}, Ldd;->a()V

    new-instance v3, Ldi;

    invoke-direct {v3}, Ldi;-><init>()V

    iget-object v4, p0, Lcom/tencent/powermanager/view/PowerManagerView;->a:Landroid/content/Context;

    const v5, 0x7f060009

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Ldi;->a:Ljava/lang/String;

    const/4 v4, 0x0

    iput v4, v3, Ldi;->b:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Ldi;

    invoke-direct {v3}, Ldi;-><init>()V

    iget-object v4, p0, Lcom/tencent/powermanager/view/PowerManagerView;->a:Landroid/content/Context;

    invoke-virtual {v4, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Ldi;->a:Ljava/lang/String;

    iput v6, v3, Ldi;->b:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v1}, Ldd;->a(Ljava/util/ArrayList;)V

    new-instance v1, Lee;

    invoke-direct {v1, p0, v0, v2}, Lee;-><init>(Lcom/tencent/powermanager/view/PowerManagerView;Ldd;Lbf;)V

    invoke-virtual {v0, v1}, Ldd;->a(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v1, v2, Lbf;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ldd;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Ldd;->show()V

    goto :goto_0
.end method

.method public final b(Landroid/content/Intent;)V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v4, -0x1

    const-string v0, "extra_gprs_status"

    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v0, "extra_screen_light"

    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerManagerView;->a:Landroid/content/Context;

    const-string v5, "wifi"

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    const/4 v5, 0x2

    if-ne v0, v5, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerManagerView;->d:Lcom/tencent/powermanager/uilib/SwitchButtonView;

    const v5, 0x7f02015d

    invoke-virtual {v0, v5}, Lcom/tencent/powermanager/uilib/SwitchButtonView;->setIcon(I)V

    :goto_0
    if-ne v3, v1, :cond_4

    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerManagerView;->a:Landroid/content/Context;

    const-string v5, "phone"

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerManagerView;->k:Lr;

    invoke-virtual {v0}, Lr;->g()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerManagerView;->e:Lcom/tencent/powermanager/uilib/SwitchButtonView;

    const v1, 0x7f020151

    invoke-virtual {v0, v1}, Lcom/tencent/powermanager/uilib/SwitchButtonView;->setIcon(I)V

    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerManagerView;->k:Lr;

    invoke-virtual {v0}, Lr;->g()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerManagerView;->f:Lcom/tencent/powermanager/uilib/SwitchButtonView;

    const v1, 0x7f020157

    invoke-virtual {v0, v1}, Lcom/tencent/powermanager/uilib/SwitchButtonView;->setIcon(I)V

    :goto_3
    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerManagerView;->k:Lr;

    invoke-virtual {v0}, Lr;->l()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/tencent/powermanager/view/PowerManagerView;->d(I)V

    invoke-direct {p0, v4}, Lcom/tencent/powermanager/view/PowerManagerView;->e(I)V

    invoke-direct {p0}, Lcom/tencent/powermanager/view/PowerManagerView;->k()V

    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerManagerView;->b:Lcom/tencent/powermanager/uilib/view/BatteryModeSwitchView;

    iget-object v1, p0, Lcom/tencent/powermanager/view/PowerManagerView;->c:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/tencent/powermanager/uilib/view/BatteryModeSwitchView;->setDataList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerManagerView;->b:Lcom/tencent/powermanager/uilib/view/BatteryModeSwitchView;

    invoke-virtual {v0}, Lcom/tencent/powermanager/uilib/view/BatteryModeSwitchView;->a()V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerManagerView;->d:Lcom/tencent/powermanager/uilib/SwitchButtonView;

    const v5, 0x7f02015c

    invoke-virtual {v0, v5}, Lcom/tencent/powermanager/uilib/SwitchButtonView;->setIcon(I)V

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    if-nez v3, :cond_1

    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerManagerView;->e:Lcom/tencent/powermanager/uilib/SwitchButtonView;

    const v1, 0x7f020150

    invoke-virtual {v0, v1}, Lcom/tencent/powermanager/uilib/SwitchButtonView;->setIcon(I)V

    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerManagerView;->i:Lap;

    invoke-virtual {v0, v2}, Lap;->b(Z)Z

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerManagerView;->f:Lcom/tencent/powermanager/uilib/SwitchButtonView;

    const v1, 0x7f020156

    invoke-virtual {v0, v1}, Lcom/tencent/powermanager/uilib/SwitchButtonView;->setIcon(I)V

    goto :goto_3
.end method

.method public final d()V
    .locals 7

    const/4 v6, 0x1

    invoke-super {p0}, Lcom/tencent/powermanager/uilib/view/BaseTabView;->d()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/powermanager/view/PowerManagerView;->p:Ljava/util/ArrayList;

    new-instance v0, Lag;

    invoke-direct {v0}, Lag;-><init>()V

    iput-object v0, p0, Lcom/tencent/powermanager/view/PowerManagerView;->r:Lag;

    invoke-static {}, Ls;->a()Ls;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/powermanager/view/PowerManagerView;->o:Ls;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/powermanager/view/PowerManagerView;->c:Ljava/util/List;

    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerManagerView;->c:Ljava/util/List;

    new-instance v1, Ldg;

    sget-object v2, Ls;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/powermanager/view/PowerManagerView;->a:Landroid/content/Context;

    const v4, 0x7f06001f

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v6, v2, v3}, Ldg;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerManagerView;->c:Ljava/util/List;

    new-instance v1, Ldg;

    const/4 v2, 0x2

    sget-object v3, Ls;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/tencent/powermanager/view/PowerManagerView;->a:Landroid/content/Context;

    const v5, 0x7f060020

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Ldg;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerManagerView;->c:Ljava/util/List;

    new-instance v1, Ldg;

    const/4 v2, 0x3

    sget-object v3, Ls;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/tencent/powermanager/view/PowerManagerView;->a:Landroid/content/Context;

    const v5, 0x7f060021

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Ldg;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerManagerView;->c:Ljava/util/List;

    new-instance v1, Ldg;

    const/4 v2, 0x4

    sget-object v3, Ls;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/tencent/powermanager/view/PowerManagerView;->a:Landroid/content/Context;

    const v5, 0x7f06001e

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Ldg;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerManagerView;->c:Ljava/util/List;

    new-instance v1, Ldg;

    const/16 v2, 0xff

    iget-object v3, p0, Lcom/tencent/powermanager/view/PowerManagerView;->a:Landroid/content/Context;

    const v4, 0x7f06001d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Ldg;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v0, 0x7f08009d

    invoke-virtual {p0, v0}, Lcom/tencent/powermanager/view/PowerManagerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/powermanager/uilib/view/BatteryModeSwitchView;

    iput-object v0, p0, Lcom/tencent/powermanager/view/PowerManagerView;->b:Lcom/tencent/powermanager/uilib/view/BatteryModeSwitchView;

    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerManagerView;->b:Lcom/tencent/powermanager/uilib/view/BatteryModeSwitchView;

    iget-object v1, p0, Lcom/tencent/powermanager/view/PowerManagerView;->c:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/tencent/powermanager/uilib/view/BatteryModeSwitchView;->setDataList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerManagerView;->b:Lcom/tencent/powermanager/uilib/view/BatteryModeSwitchView;

    invoke-virtual {v0, p0}, Lcom/tencent/powermanager/uilib/view/BatteryModeSwitchView;->setClickListener(Lcom/tencent/powermanager/uilib/view/BatteryModeSwitchView$a;)V

    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerManagerView;->b:Lcom/tencent/powermanager/uilib/view/BatteryModeSwitchView;

    invoke-virtual {v0, p0}, Lcom/tencent/powermanager/uilib/view/BatteryModeSwitchView;->setLongClickListener(Lcom/tencent/powermanager/uilib/view/BatteryModeSwitchView$b;)V

    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerManagerView;->b:Lcom/tencent/powermanager/uilib/view/BatteryModeSwitchView;

    invoke-virtual {v0}, Lcom/tencent/powermanager/uilib/view/BatteryModeSwitchView;->a()V

    const v0, 0x7f080023

    invoke-virtual {p0, v0}, Lcom/tencent/powermanager/view/PowerManagerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/powermanager/uilib/ExpectTimeView;

    iput-object v0, p0, Lcom/tencent/powermanager/view/PowerManagerView;->s:Lcom/tencent/powermanager/uilib/ExpectTimeView;

    const v0, 0x7f080098

    invoke-virtual {p0, v0}, Lcom/tencent/powermanager/view/PowerManagerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/powermanager/uilib/SwitchButtonView;

    iput-object v0, p0, Lcom/tencent/powermanager/view/PowerManagerView;->d:Lcom/tencent/powermanager/uilib/SwitchButtonView;

    const v0, 0x7f080099

    invoke-virtual {p0, v0}, Lcom/tencent/powermanager/view/PowerManagerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/powermanager/uilib/SwitchButtonView;

    iput-object v0, p0, Lcom/tencent/powermanager/view/PowerManagerView;->e:Lcom/tencent/powermanager/uilib/SwitchButtonView;

    const v0, 0x7f08009a

    invoke-virtual {p0, v0}, Lcom/tencent/powermanager/view/PowerManagerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/powermanager/uilib/SwitchButtonView;

    iput-object v0, p0, Lcom/tencent/powermanager/view/PowerManagerView;->f:Lcom/tencent/powermanager/uilib/SwitchButtonView;

    const v0, 0x7f08009b

    invoke-virtual {p0, v0}, Lcom/tencent/powermanager/view/PowerManagerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/powermanager/uilib/SwitchButtonView;

    iput-object v0, p0, Lcom/tencent/powermanager/view/PowerManagerView;->g:Lcom/tencent/powermanager/uilib/SwitchButtonView;

    const v0, 0x7f08009c

    invoke-virtual {p0, v0}, Lcom/tencent/powermanager/view/PowerManagerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/powermanager/uilib/SwitchButtonView;

    iput-object v0, p0, Lcom/tencent/powermanager/view/PowerManagerView;->h:Lcom/tencent/powermanager/uilib/SwitchButtonView;

    const v0, 0x7f080097

    invoke-virtual {p0, v0}, Lcom/tencent/powermanager/view/PowerManagerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/powermanager/uilib/view/CircleBatteryView;

    iput-object v0, p0, Lcom/tencent/powermanager/view/PowerManagerView;->t:Lcom/tencent/powermanager/uilib/view/CircleBatteryView;

    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerManagerView;->d:Lcom/tencent/powermanager/uilib/SwitchButtonView;

    invoke-virtual {v0, p0}, Lcom/tencent/powermanager/uilib/SwitchButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerManagerView;->f:Lcom/tencent/powermanager/uilib/SwitchButtonView;

    invoke-virtual {v0, p0}, Lcom/tencent/powermanager/uilib/SwitchButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerManagerView;->e:Lcom/tencent/powermanager/uilib/SwitchButtonView;

    invoke-virtual {v0, p0}, Lcom/tencent/powermanager/uilib/SwitchButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerManagerView;->h:Lcom/tencent/powermanager/uilib/SwitchButtonView;

    invoke-virtual {v0, p0}, Lcom/tencent/powermanager/uilib/SwitchButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerManagerView;->g:Lcom/tencent/powermanager/uilib/SwitchButtonView;

    invoke-virtual {v0, p0}, Lcom/tencent/powermanager/uilib/SwitchButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {p0}, Lcj;->a(Lcj$a;)V

    invoke-static {}, Lap;->a()Lap;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/powermanager/view/PowerManagerView;->i:Lap;

    invoke-static {}, Laq;->a()Laq;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/powermanager/view/PowerManagerView;->j:Laq;

    invoke-static {}, Ls$a;->d()Lr;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/powermanager/view/PowerManagerView;->k:Lr;

    invoke-static {}, Ls$a;->e()Ly;

    move-result-object v0

    invoke-virtual {v0}, Ly;->k()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerManagerView;->a:Landroid/content/Context;

    invoke-static {}, Ls$a;->e()Ly;

    move-result-object v1

    invoke-static {}, Lap;->a()Lap;

    move-result-object v2

    invoke-static {}, Ls$a;->d()Lr;

    move-result-object v3

    invoke-static {}, Laq;->a()Laq;

    move-result-object v4

    invoke-virtual {v4}, Laq;->c()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v0, -0x1

    invoke-virtual {v1, v0}, Ly;->a(I)V

    :goto_0
    invoke-virtual {v3}, Lr;->f()I

    move-result v0

    invoke-virtual {v1, v0}, Ly;->b(I)V

    invoke-virtual {v2}, Lap;->b()Z

    move-result v0

    invoke-virtual {v1, v0}, Ly;->b(Z)V

    invoke-virtual {v2}, Lap;->c()Z

    move-result v0

    invoke-virtual {v1, v0}, Ly;->c(Z)V

    invoke-static {}, Lr;->j()I

    move-result v0

    invoke-virtual {v1, v0}, Ly;->c(I)V

    invoke-virtual {v3}, Lr;->i()Z

    move-result v0

    invoke-virtual {v1, v0}, Ly;->f(Z)V

    invoke-virtual {v3}, Lr;->k()Z

    move-result v0

    invoke-virtual {v1, v0}, Ly;->d(Z)V

    invoke-static {}, Lr;->m()Z

    move-result v0

    invoke-virtual {v1, v0}, Ly;->e(Z)V

    invoke-static {}, Lah;->a()Lah;

    move-result-object v0

    invoke-virtual {v0}, Lah;->d()Z

    move-result v0

    invoke-virtual {v1, v0}, Ly;->a(Z)V

    invoke-virtual {v3}, Lr;->g()Z

    move-result v0

    invoke-virtual {v1, v0}, Ly;->g(Z)V

    invoke-static {}, Ls$a;->e()Ly;

    move-result-object v0

    invoke-virtual {v0}, Ly;->l()V

    invoke-static {}, Ls$a;->e()Ly;

    move-result-object v0

    invoke-virtual {v0}, Ly;->u()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerManagerView;->r:Lag;

    iget-object v1, p0, Lcom/tencent/powermanager/view/PowerManagerView;->a:Landroid/content/Context;

    invoke-direct {p0, v6}, Lcom/tencent/powermanager/view/PowerManagerView;->c(I)Lbf;

    move-result-object v2

    invoke-virtual {v0, v1, v6, v2}, Lag;->a(Landroid/content/Context;ILbf;)V

    :cond_0
    invoke-direct {p0}, Lcom/tencent/powermanager/view/PowerManagerView;->i()V

    invoke-direct {p0}, Lcom/tencent/powermanager/view/PowerManagerView;->j()V

    iput-boolean v6, p0, Lcom/tencent/powermanager/view/PowerManagerView;->n:Z

    invoke-static {p0}, Laf;->a(Lbx;)V

    return-void

    :cond_1
    invoke-static {}, Laq;->a()Laq;

    move-result-object v4

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v4, v0}, Laq;->a(Landroid/content/ContentResolver;)I

    move-result v0

    invoke-virtual {v1, v0}, Ly;->a(I)V

    goto :goto_0
.end method

.method public final e()V
    .locals 2

    invoke-super {p0}, Lcom/tencent/powermanager/uilib/view/BaseTabView;->e()V

    iget-boolean v0, p0, Lcom/tencent/powermanager/view/PowerManagerView;->n:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/tencent/powermanager/view/PowerManagerView;->i()V

    invoke-direct {p0}, Lcom/tencent/powermanager/view/PowerManagerView;->j()V

    :goto_0
    invoke-static {p0}, Lcom/tencent/powermanager/service/NetWorkEventReceiver;->a(Lcom/tencent/powermanager/service/NetWorkEventReceiver$a;)V

    invoke-static {p0}, Lcom/tencent/powermanager/service/ModeEventReceiver;->a(Lcom/tencent/powermanager/service/ModeEventReceiver$a;)V

    invoke-static {p0}, Lcom/tencent/powermanager/service/BatteryEventReceiver;->a(Lcom/tencent/powermanager/service/BatteryEventReceiver$a;)V

    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerManagerView;->t:Lcom/tencent/powermanager/uilib/view/CircleBatteryView;

    invoke-virtual {v0}, Lcom/tencent/powermanager/uilib/view/CircleBatteryView;->a()V

    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerManagerView;->t:Lcom/tencent/powermanager/uilib/view/CircleBatteryView;

    new-instance v1, Ldz;

    invoke-direct {v1, p0}, Ldz;-><init>(Lcom/tencent/powermanager/view/PowerManagerView;)V

    invoke-virtual {v0, v1}, Lcom/tencent/powermanager/uilib/view/CircleBatteryView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/powermanager/view/PowerManagerView;->n:Z

    goto :goto_0
.end method

.method public final f()V
    .locals 0

    invoke-super {p0}, Lcom/tencent/powermanager/uilib/view/BaseTabView;->f()V

    invoke-static {p0}, Lcj;->b(Lcj$a;)V

    invoke-static {p0}, Laf;->b(Lbx;)Z

    return-void
.end method

.method public final g()I
    .locals 1

    const v0, 0x7f03002d

    return v0
.end method

.method public final h()V
    .locals 0

    invoke-static {p0}, Lcom/tencent/powermanager/service/ModeEventReceiver;->b(Lcom/tencent/powermanager/service/ModeEventReceiver$a;)V

    invoke-static {p0}, Lcom/tencent/powermanager/service/BatteryEventReceiver;->b(Lcom/tencent/powermanager/service/BatteryEventReceiver$a;)V

    invoke-static {p0}, Lcom/tencent/powermanager/service/NetWorkEventReceiver;->b(Lcom/tencent/powermanager/service/NetWorkEventReceiver$a;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    const v5, 0x7f020150

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerManagerView;->i:Lap;

    invoke-virtual {v0}, Lap;->b()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_1
    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerManagerView;->i:Lap;

    invoke-virtual {v0, v1}, Lap;->a(Z)Z

    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerManagerView;->a:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerManagerView;->a:Landroid/content/Context;

    const v1, 0x7f0600a4

    invoke-static {v0, v1}, Lp;->b(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerManagerView;->d:Lcom/tencent/powermanager/uilib/SwitchButtonView;

    const v1, 0x7f02015d

    invoke-virtual {v0, v1}, Lcom/tencent/powermanager/uilib/SwitchButtonView;->setIcon(I)V

    :goto_2
    const v0, 0xc35a

    invoke-static {v0}, Lab;->a(I)V

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerManagerView;->a:Landroid/content/Context;

    const v1, 0x7f0600a5

    invoke-static {v0, v1}, Lp;->a(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerManagerView;->d:Lcom/tencent/powermanager/uilib/SwitchButtonView;

    const v1, 0x7f02015c

    invoke-virtual {v0, v1}, Lcom/tencent/powermanager/uilib/SwitchButtonView;->setIcon(I)V

    goto :goto_2

    :pswitch_1
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {}, Lap;->a()Lap;

    move-result-object v3

    invoke-virtual {v3}, Lap;->b()Z

    move-result v3

    const/16 v4, 0x9

    if-ge v0, v4, :cond_3

    if-nez v3, :cond_4

    :cond_3
    move v3, v1

    :goto_3
    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerManagerView;->a:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_4
    if-eqz v0, :cond_6

    if-eqz v3, :cond_6

    invoke-static {}, Ls$a;->d()Lr;

    move-result-object v0

    invoke-virtual {v0}, Lr;->g()Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v1

    :goto_5
    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerManagerView;->e:Lcom/tencent/powermanager/uilib/SwitchButtonView;

    invoke-virtual {v0, v5}, Lcom/tencent/powermanager/uilib/SwitchButtonView;->setIcon(I)V

    goto/16 :goto_0

    :cond_4
    move v3, v2

    goto :goto_3

    :cond_5
    move v0, v2

    goto :goto_4

    :cond_6
    move v0, v2

    goto :goto_5

    :cond_7
    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerManagerView;->i:Lap;

    invoke-virtual {v0}, Lap;->c()Z

    move-result v0

    if-nez v0, :cond_8

    :goto_6
    if-eqz v1, :cond_9

    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerManagerView;->a:Landroid/content/Context;

    const v2, 0x7f0600a6

    invoke-static {v0, v2}, Lp;->a(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerManagerView;->e:Lcom/tencent/powermanager/uilib/SwitchButtonView;

    const v2, 0x7f020151

    invoke-virtual {v0, v2}, Lcom/tencent/powermanager/uilib/SwitchButtonView;->setIcon(I)V

    :goto_7
    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerManagerView;->i:Lap;

    invoke-virtual {v0, v1}, Lap;->b(Z)Z

    const v0, 0xc35b

    invoke-static {v0}, Lab;->a(I)V

    goto/16 :goto_0

    :cond_8
    move v1, v2

    goto :goto_6

    :cond_9
    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerManagerView;->a:Landroid/content/Context;

    const v2, 0x7f0600a7

    invoke-static {v0, v2}, Lp;->a(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerManagerView;->e:Lcom/tencent/powermanager/uilib/SwitchButtonView;

    invoke-virtual {v0, v5}, Lcom/tencent/powermanager/uilib/SwitchButtonView;->setIcon(I)V

    goto :goto_7

    :pswitch_2
    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerManagerView;->k:Lr;

    invoke-virtual {v0}, Lr;->g()Z

    move-result v0

    if-nez v0, :cond_a

    :goto_8
    if-eqz v1, :cond_b

    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerManagerView;->a:Landroid/content/Context;

    const v2, 0x7f0600a8

    invoke-static {v0, v2}, Lp;->a(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerManagerView;->f:Lcom/tencent/powermanager/uilib/SwitchButtonView;

    const v2, 0x7f020157

    invoke-virtual {v0, v2}, Lcom/tencent/powermanager/uilib/SwitchButtonView;->setIcon(I)V

    :goto_9
    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerManagerView;->k:Lr;

    invoke-virtual {v0, v1}, Lr;->a(Z)V

    invoke-direct {p0}, Lcom/tencent/powermanager/view/PowerManagerView;->i()V

    const v0, 0xc35c

    invoke-static {v0}, Lab;->a(I)V

    goto/16 :goto_0

    :cond_a
    move v1, v2

    goto :goto_8

    :cond_b
    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerManagerView;->a:Landroid/content/Context;

    const v2, 0x7f0600a9

    invoke-static {v0, v2}, Lp;->a(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerManagerView;->f:Lcom/tencent/powermanager/uilib/SwitchButtonView;

    const v2, 0x7f020156

    invoke-virtual {v0, v2}, Lcom/tencent/powermanager/uilib/SwitchButtonView;->setIcon(I)V

    goto :goto_9

    :pswitch_3
    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerManagerView;->k:Lr;

    invoke-virtual {v0}, Lr;->l()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x4

    invoke-direct {p0, v0}, Lcom/tencent/powermanager/view/PowerManagerView;->d(I)V

    iget-object v1, p0, Lcom/tencent/powermanager/view/PowerManagerView;->k:Lr;

    invoke-virtual {v1, v0}, Lr;->f(I)V

    const v0, 0xc35d

    invoke-static {v0}, Lab;->a(I)V

    goto/16 :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerManagerView;->l:[I

    iget v1, p0, Lcom/tencent/powermanager/view/PowerManagerView;->m:I

    add-int/lit8 v1, v1, 0x1

    rem-int/lit8 v1, v1, 0x4

    aget v0, v0, v1

    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    iget-object v1, p0, Lcom/tencent/powermanager/view/PowerManagerView;->j:Laq;

    invoke-virtual {v1}, Laq;->e()V

    :goto_a
    invoke-direct {p0, v0}, Lcom/tencent/powermanager/view/PowerManagerView;->e(I)V

    invoke-static {}, Lbo;->a()Lbo;

    move-result-object v0

    invoke-static {}, Laf;->a()Laf;

    move-result-object v1

    invoke-virtual {v1}, Laf;->c()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lbo;->a(D)V

    invoke-static {}, Laf;->b()V

    const v0, 0xc35e

    invoke-static {v0}, Lab;->a(I)V

    goto/16 :goto_0

    :cond_c
    mul-int/lit16 v0, v0, 0xff

    div-int/lit8 v0, v0, 0x64

    iget-object v1, p0, Lcom/tencent/powermanager/view/PowerManagerView;->j:Laq;

    invoke-virtual {v1}, Laq;->d()V

    iget-object v1, p0, Lcom/tencent/powermanager/view/PowerManagerView;->j:Laq;

    iget-object v2, p0, Lcom/tencent/powermanager/view/PowerManagerView;->a:Landroid/content/Context;

    invoke-virtual {v1, v0, v2}, Laq;->a(ILandroid/content/Context;)V

    goto :goto_a

    nop

    :pswitch_data_0
    .packed-switch 0x7f080098
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 v0, 0x19

    if-eq p1, v0, :cond_0

    const/16 v0, 0x18

    if-ne p1, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerManagerView;->k:Lr;

    invoke-virtual {v0}, Lr;->l()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/tencent/powermanager/view/PowerManagerView;->d(I)V

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/tencent/powermanager/uilib/view/BaseTabView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
