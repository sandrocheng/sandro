.class public final Lcom/keniu/security/sync/d/e/d;
.super Ljava/lang/Exception;
.source "HttpRequest.java"


# static fields
.field private static final a:J = -0x5e13633b91ea6d88L


# instance fields
.field private b:I


# direct methods
.method private constructor <init>(I)V
    .locals 0
    .parameter

    .prologue
    .line 271
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 272
    iput p1, p0, Lcom/keniu/security/sync/d/e/d;->b:I

    .line 273
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 276
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 277
    iput p1, p0, Lcom/keniu/security/sync/d/e/d;->b:I

    .line 278
    return-void
.end method

.method private constructor <init>(ILjava/lang/Throwable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 281
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 282
    iput p1, p0, Lcom/keniu/security/sync/d/e/d;->b:I

    .line 283
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 286
    iget v0, p0, Lcom/keniu/security/sync/d/e/d;->b:I

    return v0
.end method
