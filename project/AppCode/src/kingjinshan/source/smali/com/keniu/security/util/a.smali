.class public final Lcom/keniu/security/util/a;
.super Ljava/lang/Thread;
.source "ActionThread.java"


# instance fields
.field private a:Lcom/keniu/security/util/b;

.field private b:Lcom/keniu/security/util/c;

.field private c:Landroid/os/Handler;

.field private d:I

.field private e:Lcom/keniu/security/util/d;


# direct methods
.method private constructor <init>(Landroid/os/Handler;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 25
    iput-object v1, p0, Lcom/keniu/security/util/a;->b:Lcom/keniu/security/util/c;

    .line 42
    iput-object v1, p0, Lcom/keniu/security/util/a;->a:Lcom/keniu/security/util/b;

    .line 43
    iput-object p1, p0, Lcom/keniu/security/util/a;->c:Landroid/os/Handler;

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Lcom/keniu/security/util/a;->d:I

    .line 45
    iput-object v1, p0, Lcom/keniu/security/util/a;->e:Lcom/keniu/security/util/d;

    .line 46
    return-void
.end method

.method private constructor <init>(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 25
    iput-object v0, p0, Lcom/keniu/security/util/a;->b:Lcom/keniu/security/util/c;

    .line 35
    iput-object v0, p0, Lcom/keniu/security/util/a;->a:Lcom/keniu/security/util/b;

    .line 36
    iput-object p1, p0, Lcom/keniu/security/util/a;->c:Landroid/os/Handler;

    .line 37
    iput p2, p0, Lcom/keniu/security/util/a;->d:I

    .line 38
    iput-object v0, p0, Lcom/keniu/security/util/a;->e:Lcom/keniu/security/util/d;

    .line 39
    return-void
.end method

.method private constructor <init>(Lcom/keniu/security/util/b;Landroid/os/Handler;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 31
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/keniu/security/util/a;-><init>(Lcom/keniu/security/util/b;Landroid/os/Handler;I)V

    .line 32
    return-void
.end method

.method public constructor <init>(Lcom/keniu/security/util/b;Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 25
    iput-object v0, p0, Lcom/keniu/security/util/a;->b:Lcom/keniu/security/util/c;

    .line 49
    iput-object p1, p0, Lcom/keniu/security/util/a;->a:Lcom/keniu/security/util/b;

    .line 50
    iput-object p2, p0, Lcom/keniu/security/util/a;->c:Landroid/os/Handler;

    .line 51
    iput p3, p0, Lcom/keniu/security/util/a;->d:I

    .line 52
    iput-object v0, p0, Lcom/keniu/security/util/a;->e:Lcom/keniu/security/util/d;

    .line 53
    return-void
.end method

.method private constructor <init>(Lcom/keniu/security/util/b;Landroid/os/Handler;ILcom/keniu/security/util/d;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/keniu/security/util/a;->b:Lcom/keniu/security/util/c;

    .line 64
    iput-object p1, p0, Lcom/keniu/security/util/a;->a:Lcom/keniu/security/util/b;

    .line 65
    iput-object p2, p0, Lcom/keniu/security/util/a;->c:Landroid/os/Handler;

    .line 66
    iput p3, p0, Lcom/keniu/security/util/a;->d:I

    .line 67
    iput-object p4, p0, Lcom/keniu/security/util/a;->e:Lcom/keniu/security/util/d;

    .line 68
    return-void
.end method

.method private constructor <init>(Lcom/keniu/security/util/c;Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 25
    iput-object v0, p0, Lcom/keniu/security/util/a;->b:Lcom/keniu/security/util/c;

    .line 56
    iput-object p1, p0, Lcom/keniu/security/util/a;->b:Lcom/keniu/security/util/c;

    .line 57
    iput-object v0, p0, Lcom/keniu/security/util/a;->a:Lcom/keniu/security/util/b;

    .line 58
    iput-object p2, p0, Lcom/keniu/security/util/a;->c:Landroid/os/Handler;

    .line 59
    iput p3, p0, Lcom/keniu/security/util/a;->d:I

    .line 60
    iput-object v0, p0, Lcom/keniu/security/util/a;->e:Lcom/keniu/security/util/d;

    .line 61
    return-void
.end method

.method public static a(J)Lcom/keniu/security/util/b;
    .locals 1
    .parameter

    .prologue
    .line 21
    new-instance v0, Lcom/keniu/security/util/j;

    invoke-direct {v0, p0, p1}, Lcom/keniu/security/util/j;-><init>(J)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 72
    const/4 v0, 0x0

    .line 74
    :try_start_0
    iget-object v1, p0, Lcom/keniu/security/util/a;->a:Lcom/keniu/security/util/b;

    if-eqz v1, :cond_0

    .line 75
    iget-object v1, p0, Lcom/keniu/security/util/a;->a:Lcom/keniu/security/util/b;

    invoke-interface {v1}, Lcom/keniu/security/util/b;->b()V

    .line 76
    :cond_0
    iget-object v1, p0, Lcom/keniu/security/util/a;->b:Lcom/keniu/security/util/c;

    if-eqz v1, :cond_1

    .line 77
    iget-object v1, p0, Lcom/keniu/security/util/a;->b:Lcom/keniu/security/util/c;

    invoke-interface {v1}, Lcom/keniu/security/util/c;->a()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 85
    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 86
    iget v2, p0, Lcom/keniu/security/util/a;->d:I

    iput v2, v1, Landroid/os/Message;->what:I

    .line 87
    iget-object v2, p0, Lcom/keniu/security/util/a;->b:Lcom/keniu/security/util/c;

    if-eqz v2, :cond_2

    .line 88
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 89
    :cond_2
    iget-object v0, p0, Lcom/keniu/security/util/a;->c:Landroid/os/Handler;

    if-eqz v0, :cond_3

    .line 90
    iget-object v0, p0, Lcom/keniu/security/util/a;->c:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 91
    :cond_3
    return-void

    .line 78
    :catch_0
    move-exception v1

    .line 79
    iget-object v2, p0, Lcom/keniu/security/util/a;->e:Lcom/keniu/security/util/d;

    if-eqz v2, :cond_4

    .line 80
    iget-object v1, p0, Lcom/keniu/security/util/a;->e:Lcom/keniu/security/util/d;

    goto :goto_0

    .line 82
    :cond_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
