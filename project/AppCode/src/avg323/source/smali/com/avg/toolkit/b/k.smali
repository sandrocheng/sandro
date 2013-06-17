.class public Lcom/avg/toolkit/b/k;
.super Ljava/lang/Exception;


# instance fields
.field public a:Z

.field b:Ljava/lang/Exception;

.field final synthetic c:Lcom/avg/toolkit/b/j;


# direct methods
.method public constructor <init>(Lcom/avg/toolkit/b/j;Ljava/lang/Exception;Z)V
    .locals 1

    iput-object p1, p0, Lcom/avg/toolkit/b/k;->c:Lcom/avg/toolkit/b/j;

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/avg/toolkit/b/k;->b:Ljava/lang/Exception;

    iput-object p2, p0, Lcom/avg/toolkit/b/k;->b:Ljava/lang/Exception;

    iput-boolean p3, p0, Lcom/avg/toolkit/b/k;->a:Z

    return-void
.end method

.method public constructor <init>(Lcom/avg/toolkit/b/j;Ljava/lang/String;Z)V
    .locals 1

    iput-object p1, p0, Lcom/avg/toolkit/b/k;->c:Lcom/avg/toolkit/b/j;

    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/avg/toolkit/b/k;->b:Ljava/lang/Exception;

    iput-boolean p3, p0, Lcom/avg/toolkit/b/k;->a:Z

    return-void
.end method
