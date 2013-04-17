.class final Lawk;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lawj;


# direct methods
.method constructor <init>(Lawj;)V
    .locals 0

    iput-object p1, p0, Lawk;->a:Lawj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lawk;->a:Lawj;

    invoke-static {v0}, Lawj;->b(Lawj;)Lawj$b;

    move-result-object v0

    iget-object v1, p0, Lawk;->a:Lawj;

    invoke-static {v1}, Lawj;->a(Lawj;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lawj$b;->a(Ljava/lang/String;)V

    return-void
.end method
