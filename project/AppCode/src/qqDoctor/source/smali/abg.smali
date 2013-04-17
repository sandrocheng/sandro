.class final Labg;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tmsecure/module/tools/IPackageChangedListener;


# instance fields
.field private synthetic a:Labf;


# direct methods
.method constructor <init>(Labf;)V
    .locals 0

    iput-object p1, p0, Labg;->a:Labf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPackageAdded(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Labg;->a:Labf;

    invoke-static {v0, p1}, Labf;->a(Labf;Ljava/lang/String;)V

    return-void
.end method

.method public final onPackageReinstall(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onPackageRemoved(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Labg;->a:Labf;

    invoke-static {v0}, Labf;->a(Labf;)Z

    iget-object v0, p0, Labg;->a:Labf;

    invoke-static {v0, p1}, Labf;->a(Labf;Ljava/lang/String;)V

    return-void
.end method
