.class public Lcom/avg/ui/general/b/h;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:Z

.field public c:Z


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/avg/ui/general/b/h;->a:I

    iput-boolean v0, p0, Lcom/avg/ui/general/b/h;->b:Z

    iput-boolean v0, p0, Lcom/avg/ui/general/b/h;->c:Z

    return-void
.end method
