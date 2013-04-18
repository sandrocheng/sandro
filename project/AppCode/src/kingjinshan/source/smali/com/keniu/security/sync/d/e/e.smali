.class public final Lcom/keniu/security/sync/d/e/e;
.super Ljava/lang/Exception;
.source "HttpRequest.java"


# static fields
.field private static final a:J = 0x2f17bfa743a3754dL


# instance fields
.field private b:I


# direct methods
.method private constructor <init>(I)V
    .locals 0
    .parameter

    .prologue
    .line 297
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 298
    iput p1, p0, Lcom/keniu/security/sync/d/e/e;->b:I

    .line 299
    return-void
.end method

.method private constructor <init>(ILjava/lang/Throwable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 307
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 308
    iput p1, p0, Lcom/keniu/security/sync/d/e/e;->b:I

    .line 309
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 302
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 303
    const/4 v0, -0x2

    iput v0, p0, Lcom/keniu/security/sync/d/e/e;->b:I

    .line 304
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 312
    iget v0, p0, Lcom/keniu/security/sync/d/e/e;->b:I

    return v0
.end method
