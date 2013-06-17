.class public Lcom/avg/toolkit/e/a/aa;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lcom/avg/toolkit/e/a/x;

.field public c:Lcom/avg/toolkit/e/a/w;

.field public d:Lcom/avg/toolkit/e/a/w;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/avg/toolkit/e/a/aa;->a:Ljava/lang/String;

    new-instance v0, Lcom/avg/toolkit/e/a/x;

    invoke-direct {v0}, Lcom/avg/toolkit/e/a/x;-><init>()V

    iput-object v0, p0, Lcom/avg/toolkit/e/a/aa;->b:Lcom/avg/toolkit/e/a/x;

    return-void
.end method
