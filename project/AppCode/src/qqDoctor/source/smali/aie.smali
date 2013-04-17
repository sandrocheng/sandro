.class final Laie;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Llf;

.field private synthetic b:Laid;


# direct methods
.method constructor <init>(Laid;Llf;)V
    .locals 0

    iput-object p1, p0, Laie;->b:Laid;

    iput-object p2, p0, Laie;->a:Llf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Laie;->b:Laid;

    invoke-static {v0}, Laid;->a(Laid;)Ldv;

    move-result-object v0

    iget-object v1, p0, Laie;->a:Llf;

    invoke-interface {v0, v1}, Ldv;->a(Ljava/lang/Object;)V

    return-void
.end method
