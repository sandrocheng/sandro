.class public final Lvk$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:Lmk;

.field public b:Z

.field public c:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ZI)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lmk;

    invoke-direct {v0}, Lmk;-><init>()V

    iput-object v0, p0, Lvk$a;->a:Lmk;

    iput-boolean p2, p0, Lvk$a;->b:Z

    iput p3, p0, Lvk$a;->c:I

    iget-object v0, p0, Lvk$a;->a:Lmk;

    iput-object p1, v0, Lmk;->phonenum:Ljava/lang/String;

    iget-object v0, p0, Lvk$a;->a:Lmk;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lmk;->date:J

    iget-object v0, p0, Lvk$a;->a:Lmk;

    const-string v1, "-"

    iput-object v1, v0, Lmk;->body:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lmk;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvk$a;->a:Lmk;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lvk$a;->b:Z

    iput p2, p0, Lvk$a;->c:I

    return-void
.end method
