.class Lcom/htc/camera/HTCCamera$44;
.super Ljava/lang/Object;
.source "HTCCamera.java"

# interfaces
.implements Lcom/htc/camera/event/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/event/a",
        "<",
        "Lcom/htc/camera/OneValueEventArgs",
        "<",
        "Lcom/htc/camera/io/StorageSlot;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/HTCCamera;


# direct methods
.method constructor <init>(Lcom/htc/camera/HTCCamera;)V
    .locals 0

    .prologue
    .line 6838
    iput-object p1, p0, Lcom/htc/camera/HTCCamera$44;->this$0:Lcom/htc/camera/HTCCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/OneValueEventArgs;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/OneValueEventArgs",
            "<",
            "Lcom/htc/camera/io/StorageSlot;",
            ">;>;",
            "Ljava/lang/Object;",
            "Lcom/htc/camera/OneValueEventArgs",
            "<",
            "Lcom/htc/camera/io/StorageSlot;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 6842
    iget-object v1, p0, Lcom/htc/camera/HTCCamera$44;->this$0:Lcom/htc/camera/HTCCamera;

    iget-object v0, p3, Lcom/htc/camera/OneValueEventArgs;->value:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/io/StorageSlot;

    # invokes: Lcom/htc/camera/HTCCamera;->onStorageUnmounted(Lcom/htc/camera/io/StorageSlot;)V
    invoke-static {v1, v0}, Lcom/htc/camera/HTCCamera;->access$6000(Lcom/htc/camera/HTCCamera;Lcom/htc/camera/io/StorageSlot;)V

    .line 6843
    return-void
.end method

.method public bridge synthetic onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V
    .locals 0

    .prologue
    .line 6838
    check-cast p3, Lcom/htc/camera/OneValueEventArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/camera/HTCCamera$44;->onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/OneValueEventArgs;)V

    return-void
.end method