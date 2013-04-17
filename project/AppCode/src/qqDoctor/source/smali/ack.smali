.class final Lack;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/util/List;

.field private synthetic b:Lacj;


# direct methods
.method constructor <init>(Lacj;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lack;->b:Lacj;

    iput-object p2, p0, Lack;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lack;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lack;->b:Lacj;

    iget-object v1, p0, Lack;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Lacj;->b(Ljava/util/List;)V

    :cond_0
    return-void
.end method
