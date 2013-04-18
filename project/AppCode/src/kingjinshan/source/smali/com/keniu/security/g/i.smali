.class final Lcom/keniu/security/g/i;
.super Ljava/lang/Object;
.source "UpdateUIHelper.java"

# interfaces
.implements Lcom/keniu/security/monitor/b;


# static fields
.field private static final d:I = 0x0

.field private static final e:I = 0x1

.field private static final f:I = 0x2


# instance fields
.field public a:Lcom/keniu/security/f/p;

.field final synthetic b:Lcom/keniu/security/g/a;

.field private c:Z

.field private g:Landroid/os/Handler;


# direct methods
.method synthetic constructor <init>(Lcom/keniu/security/g/a;)V
    .locals 1
    .parameter

    .prologue
    .line 658
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/g/i;-><init>(Lcom/keniu/security/g/a;B)V

    return-void
.end method

.method private constructor <init>(Lcom/keniu/security/g/a;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 658
    iput-object p1, p0, Lcom/keniu/security/g/i;->b:Lcom/keniu/security/g/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 659
    new-instance v0, Lcom/keniu/security/f/p;

    invoke-direct {v0}, Lcom/keniu/security/f/p;-><init>()V

    iput-object v0, p0, Lcom/keniu/security/g/i;->a:Lcom/keniu/security/f/p;

    .line 720
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/keniu/security/g/i;->c:Z

    .line 767
    new-instance v0, Lcom/keniu/security/g/l;

    invoke-direct {v0, p0}, Lcom/keniu/security/g/l;-><init>(Lcom/keniu/security/g/i;)V

    iput-object v0, p0, Lcom/keniu/security/g/i;->g:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/keniu/security/g/i;)Z
    .locals 1
    .parameter

    .prologue
    .line 658
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/keniu/security/g/i;->c:Z

    return v0
.end method

.method static synthetic b(Lcom/keniu/security/g/i;)Z
    .locals 1
    .parameter

    .prologue
    .line 658
    iget-boolean v0, p0, Lcom/keniu/security/g/i;->c:Z

    return v0
.end method


# virtual methods
.method public final a(ILjava/lang/Object;Ljava/lang/Object;)I
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 727
    sget v0, Lcom/keniu/security/monitor/a;->q:I

    if-ne p1, v0, :cond_0

    .line 728
    iget-object v0, p0, Lcom/keniu/security/g/i;->a:Lcom/keniu/security/f/p;

    if-ne p3, v0, :cond_0

    .line 729
    iget-object v0, p0, Lcom/keniu/security/g/i;->a:Lcom/keniu/security/f/p;

    invoke-virtual {v0}, Lcom/keniu/security/f/p;->i()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 764
    :cond_0
    :goto_0
    :pswitch_0
    return v4

    .line 734
    :pswitch_1
    new-instance v0, Lcom/keniu/security/g/m;

    invoke-direct {v0, p0}, Lcom/keniu/security/g/m;-><init>(Lcom/keniu/security/g/i;)V

    .line 735
    monitor-enter v0

    .line 736
    :try_start_0
    iget-object v1, p0, Lcom/keniu/security/g/i;->a:Lcom/keniu/security/f/p;

    invoke-virtual {v1}, Lcom/keniu/security/f/p;->a()Lcom/keniu/security/f/r;

    move-result-object v1

    iget v1, v1, Lcom/keniu/security/f/r;->a:I

    iput v1, v0, Lcom/keniu/security/g/m;->a:I

    .line 737
    iget-object v1, p0, Lcom/keniu/security/g/i;->g:Landroid/os/Handler;

    const/4 v2, 0x0

    iget v3, v0, Lcom/keniu/security/g/m;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 739
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 740
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .line 741
    :pswitch_2
    new-instance v0, Lcom/keniu/security/g/m;

    invoke-direct {v0, p0}, Lcom/keniu/security/g/m;-><init>(Lcom/keniu/security/g/i;)V

    .line 745
    monitor-enter v0

    .line 746
    :try_start_1
    iget-object v1, p0, Lcom/keniu/security/g/i;->a:Lcom/keniu/security/f/p;

    invoke-virtual {v1}, Lcom/keniu/security/f/p;->a()Lcom/keniu/security/f/r;

    move-result-object v1

    iget v1, v1, Lcom/keniu/security/f/r;->b:I

    iput v1, v0, Lcom/keniu/security/g/m;->b:I

    .line 747
    iget-object v1, p0, Lcom/keniu/security/g/i;->g:Landroid/os/Handler;

    const/4 v2, 0x1

    iget v3, v0, Lcom/keniu/security/g/m;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 749
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 750
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1

    .line 757
    :pswitch_3
    iget-boolean v0, p0, Lcom/keniu/security/g/i;->c:Z

    if-nez v0, :cond_0

    .line 758
    iget-object v0, p0, Lcom/keniu/security/g/i;->g:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 729
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 711
    iget-object v0, p0, Lcom/keniu/security/g/i;->b:Lcom/keniu/security/g/a;

    invoke-static {v0}, Lcom/keniu/security/g/a;->i(Lcom/keniu/security/g/a;)Lcom/hoi/widget/q;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/keniu/security/g/i;->b:Lcom/keniu/security/g/a;

    invoke-static {v0}, Lcom/keniu/security/g/a;->i(Lcom/keniu/security/g/a;)Lcom/hoi/widget/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hoi/widget/q;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 712
    iget-object v0, p0, Lcom/keniu/security/g/i;->b:Lcom/keniu/security/g/a;

    invoke-static {v0}, Lcom/keniu/security/g/a;->i(Lcom/keniu/security/g/a;)Lcom/hoi/widget/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hoi/widget/q;->dismiss()V

    .line 713
    :cond_0
    return-void
.end method

.method public final a(Lcom/keniu/security/f/t;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 663
    iget-object v0, p0, Lcom/keniu/security/g/i;->b:Lcom/keniu/security/g/a;

    iget-object v1, p0, Lcom/keniu/security/g/i;->b:Lcom/keniu/security/g/a;

    iget-object v1, v1, Lcom/keniu/security/g/a;->a:Landroid/content/Context;

    const v2, 0x7f0b0409

    invoke-static {v1, v2}, Lcom/hoi/widget/q;->a(Landroid/content/Context;I)Lcom/hoi/widget/q;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/keniu/security/g/a;->b(Lcom/keniu/security/g/a;Lcom/hoi/widget/q;)Lcom/hoi/widget/q;

    .line 665
    iget-object v0, p0, Lcom/keniu/security/g/i;->b:Lcom/keniu/security/g/a;

    invoke-static {v0}, Lcom/keniu/security/g/a;->i(Lcom/keniu/security/g/a;)Lcom/hoi/widget/q;

    move-result-object v0

    const/4 v1, -0x2

    iget-object v2, p0, Lcom/keniu/security/g/i;->b:Lcom/keniu/security/g/a;

    iget-object v2, v2, Lcom/keniu/security/g/a;->a:Landroid/content/Context;

    const v3, 0x7f0b03f9

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/keniu/security/g/j;

    invoke-direct {v3, p0}, Lcom/keniu/security/g/j;-><init>(Lcom/keniu/security/g/i;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/hoi/widget/q;->a(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 680
    iget-object v0, p0, Lcom/keniu/security/g/i;->b:Lcom/keniu/security/g/a;

    invoke-static {v0}, Lcom/keniu/security/g/a;->i(Lcom/keniu/security/g/a;)Lcom/hoi/widget/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hoi/widget/q;->show()V

    .line 681
    iget-object v0, p0, Lcom/keniu/security/g/i;->b:Lcom/keniu/security/g/a;

    invoke-static {v0}, Lcom/keniu/security/g/a;->i(Lcom/keniu/security/g/a;)Lcom/hoi/widget/q;

    move-result-object v0

    const v1, 0x7f0b03fe

    invoke-virtual {v0, v1}, Lcom/hoi/widget/q;->setTitle(I)V

    .line 682
    iget-object v0, p0, Lcom/keniu/security/g/i;->b:Lcom/keniu/security/g/a;

    invoke-static {v0}, Lcom/keniu/security/g/a;->i(Lcom/keniu/security/g/a;)Lcom/hoi/widget/q;

    move-result-object v0

    invoke-virtual {p1}, Lcom/keniu/security/f/t;->a()Lcom/keniu/security/f/v;

    move-result-object v1

    iget v1, v1, Lcom/keniu/security/f/v;->b:I

    invoke-virtual {v0, v1}, Lcom/hoi/widget/q;->a(I)V

    .line 683
    iget-object v0, p0, Lcom/keniu/security/g/i;->b:Lcom/keniu/security/g/a;

    invoke-static {v0}, Lcom/keniu/security/g/a;->i(Lcom/keniu/security/g/a;)Lcom/hoi/widget/q;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/hoi/widget/q;->b(I)V

    .line 684
    iget-object v0, p0, Lcom/keniu/security/g/i;->b:Lcom/keniu/security/g/a;

    invoke-static {v0}, Lcom/keniu/security/g/a;->i(Lcom/keniu/security/g/a;)Lcom/hoi/widget/q;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/g/i;->b:Lcom/keniu/security/g/a;

    iget-object v1, v1, Lcom/keniu/security/g/a;->a:Landroid/content/Context;

    const v2, 0x7f0b0400

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/keniu/security/f/t;->a()Lcom/keniu/security/f/v;

    move-result-object v4

    iget v4, v4, Lcom/keniu/security/f/v;->b:I

    int-to-long v4, v4

    invoke-static {v4, v5}, Lcom/keniu/security/util/ax;->c(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hoi/widget/q;->a(Ljava/lang/String;)V

    .line 688
    iget-object v0, p0, Lcom/keniu/security/g/i;->b:Lcom/keniu/security/g/a;

    invoke-static {v0}, Lcom/keniu/security/g/a;->i(Lcom/keniu/security/g/a;)Lcom/hoi/widget/q;

    move-result-object v0

    new-instance v1, Lcom/keniu/security/g/k;

    invoke-direct {v1, p0}, Lcom/keniu/security/g/k;-><init>(Lcom/keniu/security/g/i;)V

    invoke-virtual {v0, v1}, Lcom/hoi/widget/q;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 700
    invoke-static {}, Lcom/keniu/security/monitor/a;->a()Lcom/keniu/security/monitor/a;

    move-result-object v0

    .line 701
    sget v1, Lcom/keniu/security/monitor/a;->q:I

    const v2, 0x4fffffff

    invoke-virtual {v0, v1, p0, v2}, Lcom/keniu/security/monitor/a;->a(ILcom/keniu/security/monitor/b;I)Z

    .line 704
    invoke-static {}, Lcom/keniu/security/f/ab;->a()Lcom/keniu/security/f/ab;

    move-result-object v0

    .line 705
    iget-object v1, p0, Lcom/keniu/security/g/i;->a:Lcom/keniu/security/f/p;

    invoke-static {}, Lcom/keniu/security/f/t;->b()Lcom/keniu/security/f/h;

    move-result-object v2

    invoke-static {}, Lcom/keniu/security/f/t;->c()Lcom/keniu/security/f/h;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/keniu/security/f/p;->a(Lcom/keniu/security/f/h;Lcom/keniu/security/f/h;)V

    .line 707
    iget-object v1, p0, Lcom/keniu/security/g/i;->a:Lcom/keniu/security/f/p;

    invoke-virtual {v0, v1}, Lcom/keniu/security/f/ab;->a(Lcom/keniu/security/f/ae;)Z

    .line 708
    return-void
.end method
