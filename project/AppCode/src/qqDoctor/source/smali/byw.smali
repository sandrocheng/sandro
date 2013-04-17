.class final Lbyw;
.super Ljava/lang/Object;

# interfaces
.implements Lbyr$a;


# instance fields
.field private synthetic a:Lbyr$d;


# direct methods
.method constructor <init>(Lbyr$d;)V
    .locals 0

    iput-object p1, p0, Lbyw;->a:Lbyr$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lbyw;->a:Lbyr$d;

    invoke-static {v0}, Lbyr$d;->a(Lbyr$d;)Lbyr;

    move-result-object v0

    invoke-static {v0}, Lbyr;->a(Lbyr;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbyr$b;

    invoke-virtual {v0, p1}, Lbyr$b;->onPackageRemoved(Ljava/lang/String;)V

    goto :goto_0
.end method
