.class public final Le$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation


# instance fields
.field public final synthetic a:Lbg;

.field public final synthetic b:Lck;


# direct methods
.method public constructor <init>(Lck;Lbg;)V
    .locals 0

    iput-object p1, p0, Le$a;->b:Lck;

    iput-object p2, p0, Le$a;->a:Lbg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
