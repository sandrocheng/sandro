.class final Lami;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:I

.field private synthetic b:Lamh;


# direct methods
.method constructor <init>(Lamh;I)V
    .locals 0

    iput-object p1, p0, Lami;->b:Lamh;

    iput p2, p0, Lami;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lami;->b:Lamh;

    iget v1, p0, Lami;->a:I

    invoke-static {v0, v1}, Lamh;->a(Lamh;I)V

    return-void
.end method
