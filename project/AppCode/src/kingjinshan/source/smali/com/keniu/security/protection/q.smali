.class public final Lcom/keniu/security/protection/q;
.super Ljava/lang/Object;
.source "PreventTheftSmsSentMonitor.java"

# interfaces
.implements Lcom/keniu/security/monitor/b;


# static fields
.field private static final a:Ljava/lang/String; = "PreventTheftSmsSentMonitor"

.field private static final b:I = 0xa

.field private static c:Z

.field private static d:Lcom/keniu/security/protection/q;


# instance fields
.field private e:Landroid/content/Context;

.field private f:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    sput-boolean v0, Lcom/keniu/security/protection/q;->c:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lcom/keniu/security/protection/r;

    invoke-direct {v0, p0}, Lcom/keniu/security/protection/r;-><init>(Lcom/keniu/security/protection/q;)V

    iput-object v0, p0, Lcom/keniu/security/protection/q;->f:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/keniu/security/protection/q;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 18
    iget-object v0, p0, Lcom/keniu/security/protection/q;->e:Landroid/content/Context;

    return-object v0
.end method

.method public static declared-synchronized a()V
    .locals 5

    .prologue
    .line 45
    const-class v0, Lcom/keniu/security/protection/q;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/keniu/security/protection/q;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 57
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    .line 48
    :cond_1
    const/4 v1, 0x1

    :try_start_1
    sput-boolean v1, Lcom/keniu/security/protection/q;->c:Z

    .line 49
    sget-object v1, Lcom/keniu/security/protection/q;->d:Lcom/keniu/security/protection/q;

    if-nez v1, :cond_0

    .line 50
    new-instance v1, Lcom/keniu/security/protection/q;

    invoke-direct {v1}, Lcom/keniu/security/protection/q;-><init>()V

    sput-object v1, Lcom/keniu/security/protection/q;->d:Lcom/keniu/security/protection/q;

    .line 51
    invoke-static {}, Lcom/keniu/security/monitor/a;->a()Lcom/keniu/security/monitor/a;

    move-result-object v1

    .line 52
    sget v2, Lcom/keniu/security/monitor/a;->w:I

    sget-object v3, Lcom/keniu/security/protection/q;->d:Lcom/keniu/security/protection/q;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/keniu/security/monitor/a;->a(ILcom/keniu/security/monitor/b;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 45
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private a(Lcom/keniu/security/protection/x;)V
    .locals 4
    .parameter

    .prologue
    const/16 v3, 0xa

    const/4 v2, 0x1

    .line 60
    iget-object v0, p1, Lcom/keniu/security/protection/x;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/protection/q;->e:Landroid/content/Context;

    .line 61
    iget v0, p1, Lcom/keniu/security/protection/x;->g:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget-boolean v0, p1, Lcom/keniu/security/protection/x;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/keniu/security/protection/q;->e:Landroid/content/Context;

    const v1, 0x7f0b07ce

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 62
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    iget-object v0, p1, Lcom/keniu/security/protection/x;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/keniu/security/protection/x;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/keniu/security/protection/x;->e:I

    add-int/lit8 v0, v0, 0x1

    if-lez v0, :cond_2

    if-gt v0, v3, :cond_2

    new-instance v1, Lcom/keniu/security/protection/s;

    invoke-direct {v1, p0, v0, p1}, Lcom/keniu/security/protection/s;-><init>(Lcom/keniu/security/protection/q;ILcom/keniu/security/protection/x;)V

    invoke-virtual {v1}, Lcom/keniu/security/protection/s;->start()V

    goto :goto_0

    :cond_2
    if-le v0, v3, :cond_0

    iget-boolean v0, p1, Lcom/keniu/security/protection/x;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/keniu/security/protection/q;->e:Landroid/content/Context;

    const v1, 0x7f0b07cf

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/keniu/security/protection/q;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 18
    iget-object v0, p0, Lcom/keniu/security/protection/q;->f:Landroid/os/Handler;

    return-object v0
.end method

.method private b(Lcom/keniu/security/protection/x;)V
    .locals 4
    .parameter

    .prologue
    const/16 v3, 0xa

    const/4 v2, 0x1

    .line 65
    iget v0, p1, Lcom/keniu/security/protection/x;->g:I

    .line 66
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 67
    iget-boolean v0, p1, Lcom/keniu/security/protection/x;->f:Z

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/keniu/security/protection/q;->e:Landroid/content/Context;

    const v1, 0x7f0b07ce

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    iget-object v0, p1, Lcom/keniu/security/protection/x;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/keniu/security/protection/x;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 73
    iget v0, p1, Lcom/keniu/security/protection/x;->e:I

    add-int/lit8 v0, v0, 0x1

    .line 74
    if-lez v0, :cond_2

    if-gt v0, v3, :cond_2

    .line 75
    new-instance v1, Lcom/keniu/security/protection/s;

    invoke-direct {v1, p0, v0, p1}, Lcom/keniu/security/protection/s;-><init>(Lcom/keniu/security/protection/q;ILcom/keniu/security/protection/x;)V

    invoke-virtual {v1}, Lcom/keniu/security/protection/s;->start()V

    goto :goto_0

    .line 91
    :cond_2
    if-le v0, v3, :cond_0

    .line 92
    iget-boolean v0, p1, Lcom/keniu/security/protection/x;->f:Z

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/keniu/security/protection/q;->e:Landroid/content/Context;

    const v1, 0x7f0b07cf

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method


# virtual methods
.method public final a(ILjava/lang/Object;Ljava/lang/Object;)I
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v3, 0xa

    const/4 v2, 0x1

    .line 36
    sget v0, Lcom/keniu/security/monitor/a;->w:I

    if-ne p1, v0, :cond_0

    .line 37
    const-string v0, "PreventTheftSmsSentMonitor"

    const-string v1, "monitor sent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    check-cast p2, Lcom/keniu/security/protection/x;

    .line 39
    iget-object v0, p2, Lcom/keniu/security/protection/x;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/protection/q;->e:Landroid/content/Context;

    iget v0, p2, Lcom/keniu/security/protection/x;->g:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget-boolean v0, p2, Lcom/keniu/security/protection/x;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/keniu/security/protection/q;->e:Landroid/content/Context;

    const v1, 0x7f0b07ce

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 41
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 39
    :cond_1
    iget-object v0, p2, Lcom/keniu/security/protection/x;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/keniu/security/protection/x;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget v0, p2, Lcom/keniu/security/protection/x;->e:I

    add-int/lit8 v0, v0, 0x1

    if-lez v0, :cond_2

    if-gt v0, v3, :cond_2

    new-instance v1, Lcom/keniu/security/protection/s;

    invoke-direct {v1, p0, v0, p2}, Lcom/keniu/security/protection/s;-><init>(Lcom/keniu/security/protection/q;ILcom/keniu/security/protection/x;)V

    invoke-virtual {v1}, Lcom/keniu/security/protection/s;->start()V

    goto :goto_0

    :cond_2
    if-le v0, v3, :cond_0

    iget-boolean v0, p2, Lcom/keniu/security/protection/x;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/keniu/security/protection/q;->e:Landroid/content/Context;

    const v1, 0x7f0b07cf

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
