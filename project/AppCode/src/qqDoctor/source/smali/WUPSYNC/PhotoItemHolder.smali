.class public final LWUPSYNC/PhotoItemHolder;
.super Ljava/lang/Object;


# instance fields
.field public value:LWUPSYNC/PhotoItem;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(LWUPSYNC/PhotoItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LWUPSYNC/PhotoItemHolder;->value:LWUPSYNC/PhotoItem;

    return-void
.end method
