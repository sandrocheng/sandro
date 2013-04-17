.class final Lamm;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lms;

.field private synthetic b:Lamh;


# direct methods
.method constructor <init>(Lamh;Lms;)V
    .locals 0

    iput-object p1, p0, Lamm;->b:Lamh;

    iput-object p2, p0, Lamm;->a:Lms;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lamm;->b:Lamh;

    iget-object v1, p0, Lamm;->a:Lms;

    invoke-static {v0}, Lamh;->c(Lamh;)V

    return-void
.end method
