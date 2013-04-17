.class public Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader$ExtraAddress;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExtraAddress"
.end annotation


# instance fields
.field public characterSet:I

.field public phonenumber:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader$ExtraAddress;->phonenumber:Ljava/lang/String;

    iput p2, p0, Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader$ExtraAddress;->characterSet:I

    return-void
.end method
