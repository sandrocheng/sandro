.class public Lcom/avg/toolkit/e/i;
.super Ljava/lang/Exception;


# instance fields
.field public a:Z

.field b:Ljava/lang/Exception;

.field final synthetic c:Lcom/avg/toolkit/e/h;


# direct methods
.method public constructor <init>(Lcom/avg/toolkit/e/h;Ljava/lang/Exception;Z)V
    .locals 1

    iput-object p1, p0, Lcom/avg/toolkit/e/i;->c:Lcom/avg/toolkit/e/h;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/avg/toolkit/e/i;->b:Ljava/lang/Exception;

    iput-object p2, p0, Lcom/avg/toolkit/e/i;->b:Ljava/lang/Exception;

    iput-boolean p3, p0, Lcom/avg/toolkit/e/i;->a:Z

    return-void
.end method

.method public constructor <init>(Lcom/avg/toolkit/e/h;Ljava/lang/String;Z)V
    .locals 1

    iput-object p1, p0, Lcom/avg/toolkit/e/i;->c:Lcom/avg/toolkit/e/h;

    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/avg/toolkit/e/i;->b:Ljava/lang/Exception;

    iput-boolean p3, p0, Lcom/avg/toolkit/e/i;->a:Z

    return-void
.end method
