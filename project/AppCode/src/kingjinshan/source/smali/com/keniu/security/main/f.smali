.class public final Lcom/keniu/security/main/f;
.super Ljava/lang/Object;
.source "DubaDownload.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/hoi/widget/q;

.field private c:Z

.field private d:Landroid/content/SharedPreferences;

.field private e:Z

.field private f:Ljava/lang/String;

.field private final g:I

.field private final h:I

.field private final i:I

.field private final j:I

.field private final k:I

.field private final l:I

.field private final m:I

.field private n:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-boolean v4, p0, Lcom/keniu/security/main/f;->c:Z

    .line 37
    iput-boolean v4, p0, Lcom/keniu/security/main/f;->e:Z

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/keniu/security/main/f;->f:Ljava/lang/String;

    .line 40
    const/4 v0, 0x1

    iput v0, p0, Lcom/keniu/security/main/f;->g:I

    .line 41
    const/4 v0, 0x2

    iput v0, p0, Lcom/keniu/security/main/f;->h:I

    .line 42
    const/4 v0, 0x3

    iput v0, p0, Lcom/keniu/security/main/f;->i:I

    .line 43
    const/4 v0, 0x4

    iput v0, p0, Lcom/keniu/security/main/f;->j:I

    .line 44
    const/4 v0, 0x5

    iput v0, p0, Lcom/keniu/security/main/f;->k:I

    .line 45
    const/4 v0, 0x6

    iput v0, p0, Lcom/keniu/security/main/f;->l:I

    .line 46
    const/4 v0, 0x7

    iput v0, p0, Lcom/keniu/security/main/f;->m:I

    .line 48
    new-instance v0, Lcom/keniu/security/main/g;

    invoke-direct {v0, p0}, Lcom/keniu/security/main/g;-><init>(Lcom/keniu/security/main/f;)V

    iput-object v0, p0, Lcom/keniu/security/main/f;->n:Landroid/os/Handler;

    .line 133
    iput-object p1, p0, Lcom/keniu/security/main/f;->a:Landroid/content/Context;

    .line 134
    iget-object v0, p0, Lcom/keniu/security/main/f;->a:Landroid/content/Context;

    const-string v1, "db_preferences"

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/main/f;->d:Landroid/content/SharedPreferences;

    .line 135
    iget-object v0, p0, Lcom/keniu/security/main/f;->a:Landroid/content/Context;

    const v1, 0x7f0b0314

    invoke-static {v0, v1}, Lcom/hoi/widget/q;->a(Landroid/content/Context;I)Lcom/hoi/widget/q;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/main/f;->b:Lcom/hoi/widget/q;

    .line 136
    iget-object v0, p0, Lcom/keniu/security/main/f;->b:Lcom/hoi/widget/q;

    const/4 v1, -0x1

    const-string v2, "\u9690\u85cf\u7a97\u53e3"

    new-instance v3, Lcom/keniu/security/main/h;

    invoke-direct {v3, p0}, Lcom/keniu/security/main/h;-><init>(Lcom/keniu/security/main/f;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/hoi/widget/q;->a(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 150
    iget-object v0, p0, Lcom/keniu/security/main/f;->b:Lcom/hoi/widget/q;

    const/4 v1, -0x2

    const-string v2, "\u53d6\u6d88\u5b89\u88c5"

    new-instance v3, Lcom/keniu/security/main/i;

    invoke-direct {v3, p0}, Lcom/keniu/security/main/i;-><init>(Lcom/keniu/security/main/f;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/hoi/widget/q;->a(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 162
    iget-object v0, p0, Lcom/keniu/security/main/f;->b:Lcom/hoi/widget/q;

    invoke-virtual {v0, v4}, Lcom/hoi/widget/q;->setCancelable(Z)V

    .line 163
    iget-object v0, p0, Lcom/keniu/security/main/f;->b:Lcom/hoi/widget/q;

    invoke-virtual {v0}, Lcom/hoi/widget/q;->show()V

    .line 164
    iget-object v0, p0, Lcom/keniu/security/main/f;->b:Lcom/hoi/widget/q;

    const-string v1, "\u6b63\u5728\u4e0b\u8f7d\uff0c\u8bf7\u7a0d\u5019..."

    invoke-virtual {v0, v1}, Lcom/hoi/widget/q;->b(Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lcom/keniu/security/main/f;->b:Lcom/hoi/widget/q;

    invoke-virtual {v0, v4}, Lcom/hoi/widget/q;->a(Z)V

    .line 167
    new-instance v0, Lcom/keniu/security/main/j;

    invoke-direct {v0, p0}, Lcom/keniu/security/main/j;-><init>(Lcom/keniu/security/main/f;)V

    invoke-virtual {v0}, Lcom/keniu/security/main/j;->start()V

    .line 168
    return-void
.end method

.method static synthetic a(Lcom/keniu/security/main/f;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/keniu/security/main/f;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/keniu/security/main/f;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/keniu/security/main/f;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/main/f;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/keniu/security/main/f;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/keniu/security/main/f;->f:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/keniu/security/main/f;)Lcom/hoi/widget/q;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/keniu/security/main/f;->b:Lcom/hoi/widget/q;

    return-object v0
.end method

.method static synthetic c(Lcom/keniu/security/main/f;)Z
    .locals 1
    .parameter

    .prologue
    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/keniu/security/main/f;->e:Z

    return v0
.end method

.method static synthetic d(Lcom/keniu/security/main/f;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/keniu/security/main/f;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/keniu/security/main/f;)Z
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/keniu/security/main/f;->c:Z

    return v0
.end method

.method static synthetic f(Lcom/keniu/security/main/f;)Z
    .locals 1
    .parameter

    .prologue
    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/keniu/security/main/f;->c:Z

    return v0
.end method

.method static synthetic g(Lcom/keniu/security/main/f;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/keniu/security/main/f;->n:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic h(Lcom/keniu/security/main/f;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/keniu/security/main/f;->d:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic i(Lcom/keniu/security/main/f;)Z
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/keniu/security/main/f;->e:Z

    return v0
.end method
