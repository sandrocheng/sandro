.class public Lcom/tencent/lbsapi/a/e;
.super Ljava/lang/Exception;


# static fields
.field private static final a:J = 0x1L


# instance fields
.field private b:I


# direct methods
.method protected constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    const/16 v0, 0xc8

    iput v0, p0, Lcom/tencent/lbsapi/a/e;->b:I

    iput p1, p0, Lcom/tencent/lbsapi/a/e;->b:I

    return-void
.end method


# virtual methods
.method protected a()I
    .locals 1

    iget v0, p0, Lcom/tencent/lbsapi/a/e;->b:I

    return v0
.end method
