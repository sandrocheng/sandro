.class final Lale;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lkw;

.field private synthetic b:Lald;


# direct methods
.method constructor <init>(Lald;Lkw;)V
    .locals 0

    iput-object p1, p0, Lale;->b:Lald;

    iput-object p2, p0, Lale;->a:Lkw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lale;->b:Lald;

    invoke-static {v0}, Lald;->a(Lald;)Ldv;

    move-result-object v0

    iget-object v1, p0, Lale;->a:Lkw;

    invoke-interface {v0, v1}, Ldv;->a(Ljava/lang/Object;)V

    return-void
.end method
