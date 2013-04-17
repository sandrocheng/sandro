.class public Lcom/tencent/powermanager/uilib/view/BatteryLowTipsView;
.super Lcom/tencent/powermanager/uilib/view/BaseBatteryTipsView;


# static fields
.field private static b:Lcom/tencent/powermanager/uilib/view/BatteryLowTipsView;

.field private static c:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f06009d

    aput v2, v0, v1

    sput-object v0, Lcom/tencent/powermanager/uilib/view/BatteryLowTipsView;->c:[I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/powermanager/uilib/view/BaseBatteryTipsView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static f()V
    .locals 2

    sget-object v0, Lcom/tencent/powermanager/uilib/view/BatteryLowTipsView;->b:Lcom/tencent/powermanager/uilib/view/BatteryLowTipsView;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/powermanager/uilib/view/BatteryLowTipsView;

    invoke-static {}, Lcom/tencent/powermanager/PowerManagerApplication;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/powermanager/uilib/view/BatteryLowTipsView;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tencent/powermanager/uilib/view/BatteryLowTipsView;->b:Lcom/tencent/powermanager/uilib/view/BatteryLowTipsView;

    :cond_0
    sget-object v0, Lcom/tencent/powermanager/uilib/view/BatteryLowTipsView;->b:Lcom/tencent/powermanager/uilib/view/BatteryLowTipsView;

    invoke-virtual {v0}, Lcom/tencent/powermanager/uilib/view/BatteryLowTipsView;->a()V

    invoke-static {}, Ls$a;->d()Lr;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lr;->j(Z)V

    return-void
.end method


# virtual methods
.method protected final b()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iget-object v1, p0, Lcom/tencent/powermanager/uilib/view/BatteryLowTipsView;->a:Landroid/content/Context;

    sget-object v2, Lcom/tencent/powermanager/uilib/view/BatteryLowTipsView;->c:[I

    sget-object v3, Lcom/tencent/powermanager/uilib/view/BatteryLowTipsView;->c:[I

    array-length v3, v3

    invoke-virtual {v0, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    aget v0, v2, v0

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final c()I
    .locals 1

    invoke-static {}, Ldv;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method protected final d()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/view/BatteryLowTipsView;->a:Landroid/content/Context;

    const v1, 0x7f06009e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final e()V
    .locals 6

    invoke-static {}, Ls$a;->d()Lr;

    move-result-object v0

    invoke-static {}, Ls$a;->e()Ly;

    move-result-object v1

    invoke-virtual {v0}, Lr;->c()I

    move-result v2

    invoke-virtual {v0, v2}, Lr;->b(I)V

    invoke-virtual {v0}, Lr;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lr;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/view/BatteryLowTipsView;->a:Landroid/content/Context;

    invoke-static {}, Ls$a;->e()Ly;

    move-result-object v2

    invoke-static {}, Lap;->a()Lap;

    move-result-object v3

    invoke-static {}, Ls$a;->d()Lr;

    move-result-object v4

    invoke-static {}, Laq;->a()Laq;

    move-result-object v5

    invoke-virtual {v5}, Laq;->c()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v0, -0x1

    invoke-virtual {v2, v0}, Ly;->d(I)V

    :goto_0
    invoke-virtual {v4}, Lr;->f()I

    move-result v0

    invoke-virtual {v2, v0}, Ly;->e(I)V

    invoke-virtual {v3}, Lap;->b()Z

    move-result v0

    invoke-virtual {v2, v0}, Ly;->q(Z)V

    invoke-virtual {v3}, Lap;->c()Z

    move-result v0

    invoke-virtual {v2, v0}, Ly;->r(Z)V

    invoke-static {}, Lr;->j()I

    move-result v0

    invoke-virtual {v2, v0}, Ly;->f(I)V

    invoke-virtual {v4}, Lr;->i()Z

    move-result v0

    invoke-virtual {v2, v0}, Ly;->t(Z)V

    invoke-virtual {v4}, Lr;->k()Z

    move-result v0

    invoke-virtual {v2, v0}, Ly;->s(Z)V

    invoke-virtual {v2}, Ly;->C()V

    invoke-static {}, Lah;->a()Lah;

    move-result-object v0

    invoke-virtual {v0}, Lah;->d()Z

    move-result v0

    invoke-virtual {v2, v0}, Ly;->p(Z)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ly;->o(Z)V

    new-instance v0, Lag;

    invoke-direct {v0}, Lag;-><init>()V

    invoke-static {}, Lcom/tencent/powermanager/PowerManagerApplication;->a()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lag;->a(Landroid/content/Context;ILbf;)V

    const v0, 0xc36a

    invoke-static {v0}, Lab;->a(I)V

    return-void

    :cond_0
    invoke-static {}, Laq;->a()Laq;

    move-result-object v5

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v5, v0}, Laq;->a(Landroid/content/ContentResolver;)I

    move-result v0

    invoke-virtual {v2, v0}, Ly;->d(I)V

    goto :goto_0
.end method
