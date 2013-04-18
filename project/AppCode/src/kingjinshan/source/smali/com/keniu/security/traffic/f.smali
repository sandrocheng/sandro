.class public final Lcom/keniu/security/traffic/f;
.super Ljava/lang/Object;
.source "Api.java"


# instance fields
.field a:I

.field b:[Ljava/lang/String;

.field c:Z

.field d:Z

.field e:Z

.field f:Ljava/lang/String;

.field g:Landroid/content/pm/ApplicationInfo;

.field h:Landroid/graphics/drawable/Drawable;

.field i:Z

.field j:Z

.field k:Z

.field l:Z

.field m:D


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 878
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 860
    iput-boolean v0, p0, Lcom/keniu/security/traffic/f;->e:Z

    .line 872
    iput-boolean v0, p0, Lcom/keniu/security/traffic/f;->k:Z

    .line 874
    iput-boolean v0, p0, Lcom/keniu/security/traffic/f;->l:Z

    .line 879
    return-void
.end method

.method private constructor <init>(ILjava/lang/String;ZZ)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 882
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 860
    iput-boolean v1, p0, Lcom/keniu/security/traffic/f;->e:Z

    .line 872
    iput-boolean v1, p0, Lcom/keniu/security/traffic/f;->k:Z

    .line 874
    iput-boolean v1, p0, Lcom/keniu/security/traffic/f;->l:Z

    .line 883
    iput p1, p0, Lcom/keniu/security/traffic/f;->a:I

    .line 884
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    aput-object p2, v0, v1

    iput-object v0, p0, Lcom/keniu/security/traffic/f;->b:[Ljava/lang/String;

    .line 885
    iput-boolean p3, p0, Lcom/keniu/security/traffic/f;->c:Z

    .line 886
    iput-boolean p4, p0, Lcom/keniu/security/traffic/f;->d:Z

    .line 887
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/keniu/security/traffic/f;->m:D

    .line 888
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 895
    iget-object v0, p0, Lcom/keniu/security/traffic/f;->f:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 896
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 897
    iget-object v1, p0, Lcom/keniu/security/traffic/f;->b:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 898
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 899
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/traffic/f;->f:Ljava/lang/String;

    .line 901
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/traffic/f;->f:Ljava/lang/String;

    return-object v0
.end method
