.class final Lbyt;
.super Ljava/lang/Thread;


# instance fields
.field private synthetic a:Lbyr$b;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lbyr$b;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lbyt;->a:Lbyr$b;

    iput-object p2, p0, Lbyt;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lbyt;->a:Lbyr$b;

    invoke-static {v0}, Lbyr$b;->a(Lbyr$b;)Lcom/tencent/tmsecure/module/tools/IPackageChangedListener;

    move-result-object v0

    iget-object v1, p0, Lbyt;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/tencent/tmsecure/module/tools/IPackageChangedListener;->onPackageRemoved(Ljava/lang/String;)V

    return-void
.end method
