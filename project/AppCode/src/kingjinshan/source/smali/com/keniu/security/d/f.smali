.class public final Lcom/keniu/security/d/f;
.super Ljava/lang/Object;
.source "SpNumModel.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final h:I = 0x0

.field public static final i:I = 0x1

.field private static final j:J = -0x6cf1dce89f00debdL


# instance fields
.field public a:J

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:I

.field public f:I

.field public g:I


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 41
    const-string v0, ""

    const-string v1, ""

    invoke-direct {p0, p1, v0, v1}, Lcom/keniu/security/d/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/keniu/security/d/f;->a:J

    .line 32
    iput-object p1, p0, Lcom/keniu/security/d/f;->b:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcom/keniu/security/d/f;->c:Ljava/lang/String;

    .line 34
    iput-object p3, p0, Lcom/keniu/security/d/f;->d:Ljava/lang/String;

    .line 35
    iput v2, p0, Lcom/keniu/security/d/f;->e:I

    .line 36
    iput v2, p0, Lcom/keniu/security/d/f;->f:I

    .line 37
    iput v2, p0, Lcom/keniu/security/d/f;->g:I

    .line 38
    return-void
.end method
