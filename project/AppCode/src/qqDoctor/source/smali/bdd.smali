.class final Lbdd;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lbcz;


# direct methods
.method constructor <init>(Lbcz;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lbdd;->b:Lbcz;

    iput-object p2, p0, Lbdd;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lhs;->a()Lhs;

    move-result-object v0

    new-instance v1, Lbde;

    invoke-direct {v1, p0}, Lbde;-><init>(Lbdd;)V

    invoke-virtual {v0, v1}, Lhs;->a(Ldv;)Z

    return-void
.end method
