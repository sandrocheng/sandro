.class Lcom/avg/toolkit/b/c;
.super Ljava/lang/Object;


# instance fields
.field public a:Lcom/avg/toolkit/b/g;

.field public b:Z

.field public c:I

.field public d:Lcom/avg/toolkit/b/e;

.field final synthetic e:Lcom/avg/toolkit/b/a;


# direct methods
.method public constructor <init>(Lcom/avg/toolkit/b/a;Lcom/avg/toolkit/b/g;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/avg/toolkit/b/c;->e:Lcom/avg/toolkit/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/avg/toolkit/b/c;->a:Lcom/avg/toolkit/b/g;

    iput-boolean v0, p0, Lcom/avg/toolkit/b/c;->b:Z

    iput v0, p0, Lcom/avg/toolkit/b/c;->c:I

    sget-object v0, Lcom/avg/toolkit/b/e;->b:Lcom/avg/toolkit/b/e;

    iput-object v0, p0, Lcom/avg/toolkit/b/c;->d:Lcom/avg/toolkit/b/e;

    return-void
.end method
