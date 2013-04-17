.class public final Leh;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lde;


# direct methods
.method public constructor <init>(Lde;)V
    .locals 0

    iput-object p1, p0, Leh;->a:Lde;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Leh;->a:Lde;

    invoke-virtual {v0}, Lde;->dismiss()V

    return-void
.end method
