.class final Lcom/keniu/security/g/r;
.super Ljava/lang/Object;
.source "UpdateUIHelper.java"

# interfaces
.implements Lcom/keniu/security/monitor/b;


# static fields
.field private static final c:I = 0x0

.field private static final d:I = 0x2


# instance fields
.field public a:Lcom/keniu/security/f/w;

.field final synthetic b:Lcom/keniu/security/g/a;

.field private e:Z

.field private f:I

.field private g:Landroid/os/Handler;


# direct methods
.method synthetic constructor <init>(Lcom/keniu/security/g/a;)V
    .locals 1
    .parameter

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/g/r;-><init>(Lcom/keniu/security/g/a;B)V

    return-void
.end method

.method private constructor <init>(Lcom/keniu/security/g/a;B)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 61
    iput-object p1, p0, Lcom/keniu/security/g/r;->b:Lcom/keniu/security/g/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Lcom/keniu/security/f/w;

    invoke-direct {v0}, Lcom/keniu/security/f/w;-><init>()V

    iput-object v0, p0, Lcom/keniu/security/g/r;->a:Lcom/keniu/security/f/w;

    .line 124
    iput-boolean v1, p0, Lcom/keniu/security/g/r;->e:Z

    .line 126
    iput v1, p0, Lcom/keniu/security/g/r;->f:I

    .line 128
    new-instance v0, Lcom/keniu/security/g/u;

    invoke-direct {v0, p0}, Lcom/keniu/security/g/u;-><init>(Lcom/keniu/security/g/r;)V

    iput-object v0, p0, Lcom/keniu/security/g/r;->g:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/keniu/security/g/r;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 61
    iput p1, p0, Lcom/keniu/security/g/r;->f:I

    return p1
.end method

.method static synthetic a(Lcom/keniu/security/g/r;)Z
    .locals 1
    .parameter

    .prologue
    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/keniu/security/g/r;->e:Z

    return v0
.end method

.method static synthetic b(Lcom/keniu/security/g/r;)I
    .locals 1
    .parameter

    .prologue
    .line 61
    iget v0, p0, Lcom/keniu/security/g/r;->f:I

    return v0
.end method

.method static synthetic c(Lcom/keniu/security/g/r;)Z
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/keniu/security/g/r;->e:Z

    return v0
.end method


# virtual methods
.method public final a(ILjava/lang/Object;Ljava/lang/Object;)I
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 151
    sget v0, Lcom/keniu/security/monitor/a;->q:I

    if-ne p1, v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/keniu/security/g/r;->a:Lcom/keniu/security/f/w;

    if-ne p3, v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/keniu/security/g/r;->a:Lcom/keniu/security/f/w;

    invoke-virtual {v0}, Lcom/keniu/security/f/w;->i()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 178
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 158
    :pswitch_1
    new-instance v0, Lcom/keniu/security/g/v;

    invoke-direct {v0, p0}, Lcom/keniu/security/g/v;-><init>(Lcom/keniu/security/g/r;)V

    .line 159
    monitor-enter v0

    .line 160
    :try_start_0
    iget-object v1, p0, Lcom/keniu/security/g/r;->a:Lcom/keniu/security/f/w;

    invoke-virtual {v1}, Lcom/keniu/security/f/w;->a()Lcom/keniu/security/f/y;

    move-result-object v1

    iget v1, v1, Lcom/keniu/security/f/y;->e:I

    iput v1, v0, Lcom/keniu/security/g/v;->a:I

    .line 161
    iget-object v1, p0, Lcom/keniu/security/g/r;->g:Landroid/os/Handler;

    const/4 v2, 0x0

    iget v3, v0, Lcom/keniu/security/g/v;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 163
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 164
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .line 171
    :pswitch_2
    iget-boolean v0, p0, Lcom/keniu/security/g/r;->e:Z

    if-nez v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/keniu/security/g/r;->g:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 153
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/keniu/security/g/r;->b:Lcom/keniu/security/g/a;

    invoke-static {v0}, Lcom/keniu/security/g/a;->a(Lcom/keniu/security/g/a;)Lcom/hoi/widget/q;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/keniu/security/g/r;->b:Lcom/keniu/security/g/a;

    invoke-static {v0}, Lcom/keniu/security/g/a;->a(Lcom/keniu/security/g/a;)Lcom/hoi/widget/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hoi/widget/q;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/keniu/security/g/r;->b:Lcom/keniu/security/g/a;

    invoke-static {v0}, Lcom/keniu/security/g/a;->a(Lcom/keniu/security/g/a;)Lcom/hoi/widget/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hoi/widget/q;->dismiss()V

    .line 118
    :cond_0
    return-void
.end method

.method public final a(Lcom/keniu/security/f/t;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 68
    iget-object v0, p0, Lcom/keniu/security/g/r;->b:Lcom/keniu/security/g/a;

    iget-object v1, p0, Lcom/keniu/security/g/r;->b:Lcom/keniu/security/g/a;

    iget-object v1, v1, Lcom/keniu/security/g/a;->a:Landroid/content/Context;

    const v2, 0x7f0b0409

    invoke-static {v1, v2}, Lcom/hoi/widget/q;->a(Landroid/content/Context;I)Lcom/hoi/widget/q;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/keniu/security/g/a;->a(Lcom/keniu/security/g/a;Lcom/hoi/widget/q;)Lcom/hoi/widget/q;

    .line 70
    iget-object v0, p0, Lcom/keniu/security/g/r;->b:Lcom/keniu/security/g/a;

    invoke-static {v0}, Lcom/keniu/security/g/a;->a(Lcom/keniu/security/g/a;)Lcom/hoi/widget/q;

    move-result-object v0

    const/4 v1, -0x2

    iget-object v2, p0, Lcom/keniu/security/g/r;->b:Lcom/keniu/security/g/a;

    iget-object v2, v2, Lcom/keniu/security/g/a;->a:Landroid/content/Context;

    const v3, 0x7f0b021a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/keniu/security/g/s;

    invoke-direct {v3, p0}, Lcom/keniu/security/g/s;-><init>(Lcom/keniu/security/g/r;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/hoi/widget/q;->a(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 80
    iget-object v0, p0, Lcom/keniu/security/g/r;->b:Lcom/keniu/security/g/a;

    invoke-static {v0}, Lcom/keniu/security/g/a;->a(Lcom/keniu/security/g/a;)Lcom/hoi/widget/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hoi/widget/q;->show()V

    .line 82
    iget-object v0, p0, Lcom/keniu/security/g/r;->b:Lcom/keniu/security/g/a;

    invoke-static {v0}, Lcom/keniu/security/g/a;->a(Lcom/keniu/security/g/a;)Lcom/hoi/widget/q;

    move-result-object v0

    const v1, 0x7f0b03ff

    invoke-virtual {v0, v1}, Lcom/hoi/widget/q;->setTitle(I)V

    .line 83
    iget-object v0, p0, Lcom/keniu/security/g/r;->b:Lcom/keniu/security/g/a;

    invoke-static {v0}, Lcom/keniu/security/g/a;->a(Lcom/keniu/security/g/a;)Lcom/hoi/widget/q;

    move-result-object v0

    invoke-virtual {p1}, Lcom/keniu/security/f/t;->a()Lcom/keniu/security/f/v;

    move-result-object v1

    iget v1, v1, Lcom/keniu/security/f/v;->e:I

    invoke-virtual {v0, v1}, Lcom/hoi/widget/q;->a(I)V

    .line 84
    iget-object v0, p0, Lcom/keniu/security/g/r;->b:Lcom/keniu/security/g/a;

    invoke-static {v0}, Lcom/keniu/security/g/a;->a(Lcom/keniu/security/g/a;)Lcom/hoi/widget/q;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/hoi/widget/q;->b(I)V

    .line 85
    iget-object v0, p0, Lcom/keniu/security/g/r;->b:Lcom/keniu/security/g/a;

    invoke-static {v0}, Lcom/keniu/security/g/a;->a(Lcom/keniu/security/g/a;)Lcom/hoi/widget/q;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/g/r;->b:Lcom/keniu/security/g/a;

    iget-object v1, v1, Lcom/keniu/security/g/a;->a:Landroid/content/Context;

    const v2, 0x7f0b0400

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/keniu/security/f/t;->a()Lcom/keniu/security/f/v;

    move-result-object v4

    iget v4, v4, Lcom/keniu/security/f/v;->e:I

    int-to-long v4, v4

    invoke-static {v4, v5}, Lcom/keniu/security/util/ax;->c(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hoi/widget/q;->a(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/keniu/security/g/r;->b:Lcom/keniu/security/g/a;

    invoke-static {v0}, Lcom/keniu/security/g/a;->a(Lcom/keniu/security/g/a;)Lcom/hoi/widget/q;

    move-result-object v0

    new-instance v1, Lcom/keniu/security/g/t;

    invoke-direct {v1, p0}, Lcom/keniu/security/g/t;-><init>(Lcom/keniu/security/g/r;)V

    invoke-virtual {v0, v1}, Lcom/hoi/widget/q;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 101
    invoke-static {}, Lcom/keniu/security/monitor/a;->a()Lcom/keniu/security/monitor/a;

    move-result-object v0

    .line 102
    sget v1, Lcom/keniu/security/monitor/a;->q:I

    const v2, 0x4fffffff

    invoke-virtual {v0, v1, p0, v2}, Lcom/keniu/security/monitor/a;->a(ILcom/keniu/security/monitor/b;I)Z

    .line 105
    invoke-static {}, Lcom/keniu/security/f/ab;->a()Lcom/keniu/security/f/ab;

    move-result-object v0

    .line 106
    iget-object v1, p0, Lcom/keniu/security/g/r;->a:Lcom/keniu/security/f/w;

    invoke-static {}, Lcom/keniu/security/f/t;->d()Lcom/keniu/security/f/h;

    move-result-object v2

    invoke-static {}, Lcom/keniu/security/f/t;->e()Lcom/keniu/security/f/h;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/keniu/security/f/w;->a(Lcom/keniu/security/f/h;Lcom/keniu/security/f/h;)V

    .line 108
    iget-object v1, p0, Lcom/keniu/security/g/r;->a:Lcom/keniu/security/f/w;

    invoke-virtual {v0, v1}, Lcom/keniu/security/f/ab;->a(Lcom/keniu/security/f/ae;)Z

    .line 110
    return-void
.end method
