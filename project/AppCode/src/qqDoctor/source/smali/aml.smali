.class final Laml;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lms;

.field private synthetic b:Lamh;


# direct methods
.method constructor <init>(Lamh;Lms;)V
    .locals 0

    iput-object p1, p0, Laml;->b:Lamh;

    iput-object p2, p0, Laml;->a:Lms;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Laml;->a:Lms;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Laml;->b:Lamh;

    invoke-static {v1}, Lamh;->b(Lamh;)Lbrp;

    move-result-object v1

    invoke-virtual {v1, v0}, Lbrp;->a(Ljava/util/List;)V

    return-void
.end method
